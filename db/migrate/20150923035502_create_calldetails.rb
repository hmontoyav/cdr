class CreateCalldetails < ActiveRecord::Migration
  def change
    create_table :calldetails do |t|
      t.integer :globalCallID_callId
      t.integer :cdrRecordType
      t.integer :origIpAddr
      t.string :callingPartyNumber
      t.integer :destIpAddr
      t.string :originalCalledPartyNumber
      t.integer :dateTimeConnect
      t.integer :dateTimeDisconnect
      t.string :originalCalledPartyNumberPartition
      t.integer :duration
      t.string :origDeviceName
      t.string :destDeviceName

      t.timestamps
    end
  end
end
