$ ->
  $("form").submit (event) ->
    event.preventDefault()
    alert('sup')
    country = $("#user_country_code").val()
    year = $("#user_birthday_1i").val()
    $.ajax
      dataType: 'jsonp'
      url: "http://api.worldbank.org/countries/#{country}/indicators/SP.DYN.LE00.MA.IN?per_page=1&date=#{year}&format=jsonP"
      jsonp: 'prefix'
      jsonpCallback: 'cb_' + new Date().valueOf()
    .done (data) ->
      life = data[1][0].value
      alert(life)
      $('#user_life_expectancy').val(life)
      # @life_expectancy = $('#user_life_expectancy').data(life)
      # $.post('users/registrations#create', life)
      $("form#new_user").trigger('submit.rails')


# $ ->
#   $("#user_birthday_1i").change ->
#     alert('sup')
#     country = $("#user_country_code").val()
#     year = $("#user_birthday_1i").val()
#     $.ajax
#       dataType: 'jsonp'
#       url: "http://api.worldbank.org/countries/#{country}/indicators/SP.DYN.LE00.MA.IN?per_page=1&date=#{year}&format=jsonP"
#       jsonp: 'prefix'
#       jsonpCallback: 'cb_' + new Date().valueOf()
#     .done (data) ->
#       life = data[1][0].value
#       alert(life)
#       $('#user_birthday_1i').val(life)
#       # @life_expectancy = $('#user_life_expectancy').data(life)
#       # $.post('users/registrations#create', life)
#       # $("form#new_user").trigger('submit.rails')
