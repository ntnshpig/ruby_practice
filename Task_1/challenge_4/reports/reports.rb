# frozen_string_literal: true

# rubocop:disable Metrics/LineLength

require_relative 'states'

# Generates reports
module Reports
  include ReportStates

  def reports(conn)
    template = '<!DOCTYPE html><html lang="en"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width, initial-scale=1"><title>{TITLE}</title></head>'
    template += '<body style="padding: 1em"><div style="display:flex"><div style="width: 200px; height: 100px; border: 1px solid black; display: flex; align-items:center; justify-content:center;">LOGO</div><div style="width:40%"><h1 align="center">{TITLE}</h1></div></div>'
    template += '<div>{BODY}</div></body></html>'

    report_states(conn, template)
  end
end
