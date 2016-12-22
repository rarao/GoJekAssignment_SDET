def CreateResultsRequestURL(resultsfactory,trip_type,origin,from,destination,to)

		return 
			"trip_type=" + "#{trip_type}" +
			"origin=" + "#{origin}" +
			"from" + "#{from}" +
			"destination" + "#{destination}" +
			"to" + "#{to}" +
			"depart_date" + "#{resultsfactory.depart_date}" +
			"return_date" + "#{resultsfactory.return_date}" +
			"adults" + "#{resultsfactory.adults}" +
			"childs" + "#{resultsfactory.childs}" +
			"infants" + "#{resultsfactory.infants}" +
			"class"  + "#{resultsfactory.class}" +
			"airline" + "#{resultsfactory.airline}" +
			"carrier" + "#{resultsfactory.carrier}" +
			"ver" + "#{resultsfactory.ver}" +
			"type" + "#{resultsfactory.type}" +
			"intl" + "#{resultsfactory.intl}" +
			"sd" + #{resultsfactory.sd}" +
			"page" + "#{resultsfactory.page}" +
			"search_ver" + "#{resultsfactory.search_ver}" +
			"cc" + "#{resultsfactory.cc}" +
			"rhc" + "#{resultsfactory.rhc}"

end