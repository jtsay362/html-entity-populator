require 'json'

class HtmlEntitiesPopulator
  def initialize(output_path)
    @output_path = output_path
  end

  def populate
    # From http://dev.w3.org/html5/html-author/charref
    w3_table = JSON.parse(IO.read('w3.json'))
    described_table = JSON.parse(IO.read('described.json'))

    described_table_map = described_table.inject({}) { |m, x| m[x['code']] = x; m }

    w3_table.each do |x|
      namedCodes = x['namedCodes'] || []
      if namedCodes.length == 1
        x['namedCodes'] = namedCodes[0].split(/\s+/)
      end

      code = x['code']

      described_row = described_table_map[code]

      x['aliases'] ||= []

      if described_row
        (x["aliases"]).concat(described_row["aliases"] || []).uniq!
      end

      suggest_inputs = [x['symbol'], x['code'], x['hexCode']]

      suggest_inputs += x['namedCodes']
      suggest_inputs += x['aliases']

      suggest_output = ''

      if x['aliases'].length > 0
        suggest_output = x['aliases'][0]
      elsif x['namedCodes'].length > 0
        suggest_output = x['namedCodes'][0]
      else
        suggest_output += x['hexCode']
      end

      x['suggest'] = {
        input: suggest_inputs,
        output: suggest_output
      }
    end


    File.open(@output_path, 'w:UTF-8') do |out|
      out.write <<-eos
{
  "metadata" : {
    "settings" : {
      "analysis": {
        "char_filter" : {
          "no_special" : {
            "type" : "mapping",
            "mappings" : ["-=>", "&=>", "#=>", ";=>", "x=>"]
          }
        },
        "analyzer" : {
          "lower_keyword" : {
            "type" : "custom",
            "tokenizer": "keyword",
            "filter" : ["lowercase"],
            "char_filter" : ["no_special"]
          }
        }
      }
    },
    "mapping" : {
      "_all" : {
        "enabled" : false
      },
      "properties" : {
        "symbol" : {
          "type" : "string",
          "index" : "not_analyzed"
        },
        "code" : {
          "type" : "string",
          "analyzer" : "lower_keyword"
        },
        "namedCodes" : {
          "type" : "string",
          "analyzer" : "lower_keyword"
        },
        "aliases" : {
          "type" : "string",
          "index" : "analyzed"
        },
        "suggest" : {
          "type" : "completion",
          "analyzer" : "lower_keyword"
        }
      }
    }
  },
  "updates" :
eos
      out.write(JSON.pretty_generate(w3_table))
      out.write('}')
    end
  end
end

output_filename = 'html_entities.json'

ARGV.each do |arg|
  output_filename = arg
end

populator = HtmlEntitiesPopulator.new(output_filename)

populator.populate()
system("bzip2 -kf #{output_filename}")