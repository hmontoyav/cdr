json.array!(@calldetails) do |calldetail|
  json.extract! calldetail, :id, :globalCallID_callId, :cdrRecordType, :origIpAddr, :callingPartyNumber, :destIpAddr, :originalCalledPartyNumber, :dateTimeConnect, :dateTimeDisconnect, :originalCalledPartyNumberPartition, :duration, :origDeviceName, :destDeviceName
  json.url calldetail_url(calldetail, format: :json)
end
