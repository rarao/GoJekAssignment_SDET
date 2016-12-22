def ValidateResultsResponse(responseHash)
	expect(responseHash.to contain_exactly("content","expiredSupplier","fare","jsons","mapping","passengers","sid"))

	expect(responseHash["content"].nil?).to eq false
	expect(responseHash["expiredSupplier"].empty?).to eq false
	expect(responseHash["fare"].nil?).to eq false
	expect(responseHash["jsons"].nil?).to eq false
	expect(responseHash["mapping"].nil?).to eq false
	expect(responseHash["passengers"].nil?).to eq false		
	expect(responseHash["sid"].nil?).to eq false


	#Further validations can be done , digging deeper into the response
end