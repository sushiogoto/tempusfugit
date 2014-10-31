$ ->
  $("form").submit (event) ->
    alert('sup')
    event.preventDefault()
    country = $("#user_country_code").val()
    year = $("#user_birthday_1i").val()
    $.ajax
      dataType: 'jsonp'
      url: "http://api.worldbank.org/countries/#{country}/indicators/SP.DYN.LE00.MA.IN?per_page=1&date=#{year}&format=jsonP"
      jsonp: 'prefix'
      jsonpCallback: 'cb_' + new Date().valueOf()
    .done (data) ->
      @life_expectancy = data[1][0].value
      $("form#new_user").trigger('submit.rails')