***Settings** ***
Documentation    Ações da página de login

*** Variable ***
${LOGOUT_LINK}    ccs=a[href$=sign_out]

*** Keywords ***
Logout Link Should Visible
    Wait For Elements State    ${LOGOUT_LINK}    visible    10

Do Logout
    Click    ${LOGOUT_LINK}


Open Login Page
    #Open Browser    https://parodify.herokuapp.com/users/sign_in    chromium
    # New Browser    ${browser}                                      ${headless}
    New Page       https://parodify.herokuapp.com/users/sign_in


Login With
    [Arguments]    ${email}                   ${password}
    Fill Text      id=user_email              ${email}
    Fill Text      css=#user_password         ${password}
    Click          css=input[type=submit] 

Alert Should Be
    [Arguments]    ${expect}
    Get Text       article.is-danger    ==    ${expect}
