*** Settings ***
Documentation        Este aqui é o nosso gerenciador de dependências.

########################################################
#                      Libraries                       #
########################################################
Library        SeleniumLibrary
Library        DebugLibrary
Library        FakerLibrary        locale=pt_BR

########################################################
#                       Keywords                       #
########################################################
Resource       ../auto/keywords/kws_search.robot
Resource       ../auto/keywords/kws_register.robot

########################################################
#                        Pages                         #
########################################################
Resource       ../auto/pages/page_home.robot
Resource       ../auto/pages/page_search.robot
Resource       ../auto/pages/page_register.robot

########################################################
#                        Hooks                         #
########################################################
Resource        hooks.robot
Variables       hooks.yaml