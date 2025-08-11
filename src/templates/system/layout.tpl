<!DOCTYPE html>
<html lang="en" class="h-100" data-bs-theme="auto">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">

    <title>RecMan test task</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q"
            crossorigin="anonymous"></script>
    <link href="/static/custom.css" rel="stylesheet" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <header class="border-bottom border-dark border-color-dark lh-1 py-3">
        <div class="row flex-nowrap justify-content-between align-items-center">
            <div class="col-8"><a class="blog-header-logo text-body-emphasis text-decoration-none" href="/">
                    <svg xmlns="http://www.w3.org/2000/svg" width="44" height="44" viewBox="0 0 44 44" fill="none">
                        <g clip-path="url(#clip0_2604_30768)">
                            <path class="text"
                                  d="M54.7932 24.7428H51.7621V29.8112H48.597V14.1255H54.6592C58.4104 14.1255 60.1687 15.6328 60.1687 19.3264C60.1687 21.6454 59.2979 22.9208 57.8745 23.7987L60.1017 29.7947H56.6353L54.7932 24.7428ZM54.6592 17.1069H51.7621V21.7614H54.7094C56.3003 21.7614 56.9367 20.7841 56.9367 19.3761C56.9367 17.8689 56.1664 17.1069 54.6592 17.1069Z"></path>
                            <path class="text"
                                  d="M70.1325 27.0782L70.1828 29.4469C70.1828 29.4469 67.537 30.0763 65.3935 30.0763C61.927 30.0763 60.4534 28.3702 60.4534 24.279C60.4534 20.2375 62.1782 18.1836 65.5275 18.1836C68.9101 18.1836 70.5345 19.8731 70.5345 23.3017L70.3 25.4386H63.5347C63.5514 26.7305 64.2045 27.277 65.8624 27.277C67.7715 27.2935 70.1325 27.0782 70.1325 27.0782ZM67.5203 23.103C67.5203 21.4964 66.9844 20.9001 65.5442 20.9001C64.0706 20.9001 63.5682 21.6123 63.5514 23.103H67.5203Z"></path>
                            <path class="text"
                                  d="M79.8621 18.6639L79.7617 21.281C79.7617 21.281 77.9531 21.0986 77.0655 21.0986C74.855 21.0986 74.4531 21.844 74.4531 24.0138C74.4531 26.4488 74.8885 27.1776 77.099 27.1776C77.9698 27.1776 79.7617 26.9953 79.7617 26.9953L79.8621 29.6124C79.8621 29.6124 77.4004 30.0928 76.111 30.0928C72.678 30.0928 71.3215 28.3039 71.3215 24.0304C71.3215 20.0055 72.745 18.2167 76.178 18.2167C77.5177 18.1836 79.8621 18.6639 79.8621 18.6639Z"></path>
                            <path class="text"
                                  d="M81.1349 14.1418H83.7136L88.7208 27.9394L93.7614 14.1418H96.3068V29.9933H94.9001V15.7154H94.582L89.5246 29.4632H87.8667L82.8597 15.7154H82.5415V29.9933H81.1349V14.1418Z"></path>
                            <path class="text"
                                  d="M105.768 27.9892C105.835 28.7015 106.505 28.9168 107.259 29.0161L107.192 30.1921C105.953 30.1921 105.166 29.9603 104.596 29.3308C104.596 29.3308 102.52 30.2252 100.175 30.2252C98.2494 30.2252 97.1106 29.0161 97.1106 26.7966C97.1106 24.7096 98.1489 23.6825 100.493 23.4838L104.395 23.1029V22.076C104.395 20.4361 103.608 19.7406 102.185 19.7406C100.51 19.7406 97.814 20.0883 97.814 20.0883L97.7135 18.8792C97.7135 18.8792 100.426 18.4485 102.218 18.4485C104.613 18.4485 105.735 19.5914 105.735 22.0925V27.9892H105.768ZM100.678 24.5439C99.1369 24.6764 98.5676 25.5046 98.5676 26.747C98.5676 28.2045 99.2374 28.9996 100.359 28.9996C102.319 28.9996 104.429 28.221 104.429 28.221V24.1961L100.678 24.5439Z"></path>
                            <path class="text"
                                  d="M107.878 29.9931V18.6306H109.252V19.4422C109.252 19.4422 111.228 18.4153 112.969 18.4153C116.118 18.4153 116.804 19.8397 116.804 24.0799V29.9931H115.448V24.0966C115.448 20.7838 115.079 19.6575 112.802 19.6575C111.077 19.6575 109.235 20.6182 109.235 20.6182V29.9931H107.878Z"></path>
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                  d="M26.9053 34.3627C38.4204 30.1224 45.6508 21.1118 43.0899 14.3042C46.7889 24.1099 42.9226 34.9093 34.4203 40.4249C30.7548 39.3814 28.0267 37.2944 26.9053 34.3627Z"
                                  fill="url(#paint0_linear_2604_30768)"></path>
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                  d="M26.9053 34.3627C38.4204 30.1224 45.6506 21.1118 43.0899 14.3042C40.1108 15.3974 37.4161 16.8054 35.1064 18.4451C36.9643 24.9712 33.483 31.9279 26.9053 34.3627Z"
                                  fill="url(#paint1_linear_2604_30768)"></path>
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                  d="M34.7383 17.3519C30.4871 5.98923 21.3822 -1.16624 14.4531 1.40112C24.3949 -2.276 35.3074 1.53363 40.8473 9.91481C39.8095 13.5588 37.7008 16.2587 34.7383 17.3519Z"
                                  fill="url(#paint2_linear_2604_30768)"></path>
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                  d="M34.7383 17.3519C30.4871 5.98918 21.3822 -1.1663 14.4531 1.40106C15.5577 4.34938 17.0472 7.03268 18.6373 9.30189C25.282 7.44676 32.3449 10.9251 34.7383 17.3519Z"
                                  fill="url(#paint3_linear_2604_30768)"></path>
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                  d="M17.5828 9.6497C6.10127 13.9231 -1.16258 22.9006 1.41492 29.7579C-2.30069 19.9191 1.54881 9.11967 10.0679 3.604C13.7668 4.66406 16.4782 6.70139 17.5828 9.6497Z"
                                  fill="url(#paint4_linear_2604_30768)"></path>
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                  d="M17.5828 9.64966C6.10119 13.9231 -1.16266 22.9005 1.41483 29.7579C4.394 28.6647 7.08866 27.2567 9.39836 25.617C7.55729 19.0743 11.0386 12.1176 17.5828 9.64966Z"
                                  fill="url(#paint5_linear_2604_30768)"></path>
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                  d="M9.76661 26.644C14.0513 38.0399 23.1562 45.1953 30.0519 42.5948C20.11 46.2719 9.23103 42.4954 3.62415 34.0313C4.71205 30.4868 6.78743 27.7538 9.76661 26.644Z"
                                  fill="url(#paint6_linear_2604_30768)"></path>
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                  d="M9.76672 26.644C14.0514 38.0397 23.1563 45.1953 30.052 42.5948C28.9472 39.6464 27.4744 37.0128 25.8677 34.6939C19.2231 36.5656 12.1768 33.1205 9.76672 26.644Z"
                                  fill="url(#paint7_linear_2604_30768)"></path>
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                  d="M23.2233 31.8947C32.4119 30.9671 39.4079 25.8655 38.8891 20.3831C36.5125 20.6149 34.2698 21.1449 32.2614 21.8903C32.345 27.0084 28.4286 31.3813 23.2233 31.8947Z"
                                  fill="url(#paint8_linear_2604_30768)"></path>
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                  d="M32.211 21.029C31.3741 11.9853 26.1856 5.02861 20.6457 5.54207C20.8967 7.92723 21.4155 10.1136 22.1688 12.1013C27.2902 12.035 31.7422 15.8612 32.211 21.029Z"
                                  fill="url(#paint9_linear_2604_30768)"></path>
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                  d="M21.2984 12.1509C12.0931 13.0288 5.09706 18.1469 5.61589 23.6294C7.99255 23.3975 10.2353 22.8676 12.2605 22.1553C12.1768 17.0372 16.0932 12.6478 21.2984 12.1509Z"
                                  fill="url(#paint10_linear_2604_30768)"></path>
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                  d="M12.2772 22.967C13.1476 32.0439 18.336 39.0171 23.8424 38.4539C23.6082 36.1019 23.1061 33.9156 22.3528 31.9445C17.1979 31.9776 12.7626 28.1514 12.2772 22.967Z"
                                  fill="url(#paint11_linear_2604_30768)"></path>
                        </g>
                        <defs>
                            <linearGradient id="paint0_linear_2604_30768" x1="40.863" y1="13.5965" x2="32.65" y2="39.9513" gradientUnits="userSpaceOnUse">
                                <stop stop-color="#C6E9F4"></stop>
                                <stop offset="1" stop-color="#0AB4DC"></stop>
                            </linearGradient>
                            <linearGradient id="paint1_linear_2604_30768" x1="27.1935" y1="34.4685" x2="43.58" y2="14.3668" gradientUnits="userSpaceOnUse">
                                <stop stop-color="#0FB2E8"></stop>
                                <stop offset="1" stop-color="#0A525F"></stop>
                            </linearGradient>
                            <linearGradient id="paint2_linear_2604_30768" x1="13.5" y1="3.12574" x2="39.8752" y2="12.0323" gradientUnits="userSpaceOnUse">
                                <stop stop-color="#F6EB16"></stop>
                                <stop offset="1" stop-color="#60B346"></stop>
                            </linearGradient>
                            <linearGradient id="paint3_linear_2604_30768" x1="35.3432" y1="17.1478" x2="15.0784" y2="0.872016" gradientUnits="userSpaceOnUse">
                                <stop stop-color="#CADB2B"></stop>
                                <stop offset="1" stop-color="#2A3A1A"></stop>
                            </linearGradient>
                            <linearGradient id="paint4_linear_2604_30768" x1="3.20218" y1="30.5999" x2="11.8709" y2="4.38859" gradientUnits="userSpaceOnUse">
                                <stop stop-color="#F6EB16"></stop>
                                <stop offset="1" stop-color="#F15E22"></stop>
                            </linearGradient>
                            <linearGradient id="paint5_linear_2604_30768" x1="17.2032" y1="9.23362" x2="1.17234" y2="29.6134" gradientUnits="userSpaceOnUse">
                                <stop stop-color="#F57F20"></stop>
                                <stop offset="1" stop-color="#BF2025"></stop>
                            </linearGradient>
                            <linearGradient id="paint6_linear_2604_30768" x1="30.6506" y1="40.4307" x2="4.11973" y2="31.9889" gradientUnits="userSpaceOnUse">
                                <stop stop-color="#E9B9D6"></stop>
                                <stop offset="1" stop-color="#8F6BAE"></stop>
                            </linearGradient>
                            <linearGradient id="paint7_linear_2604_30768" x1="9.69731" y1="26.9473" x2="29.6704" y2="43.5717" gradientUnits="userSpaceOnUse">
                                <stop stop-color="#8F6BAE"></stop>
                                <stop offset="1" stop-color="#30266F"></stop>
                            </linearGradient>
                            <linearGradient id="paint8_linear_2604_30768" x1="23.0654" y1="32.2181" x2="38.9203" y2="20.7815" gradientUnits="userSpaceOnUse">
                                <stop stop-color="#C6E9F4"></stop>
                                <stop offset="1" stop-color="#0AB4DC"></stop>
                            </linearGradient>
                            <linearGradient id="paint9_linear_2604_30768" x1="32.5543" y1="20.7754" x2="21.0354" y2="5.05773" gradientUnits="userSpaceOnUse">
                                <stop stop-color="#F6EB16"></stop>
                                <stop offset="1" stop-color="#60B346"></stop>
                            </linearGradient>
                            <linearGradient id="paint10_linear_2604_30768" x1="20.9074" y1="11.9161" x2="5.25814" y2="23.6261" gradientUnits="userSpaceOnUse">
                                <stop stop-color="#F6EB16"></stop>
                                <stop offset="1" stop-color="#F15E22"></stop>
                            </linearGradient>
                            <linearGradient id="paint11_linear_2604_30768" x1="11.9905" y1="22.9575" x2="23.2321" y2="38.8704" gradientUnits="userSpaceOnUse">
                                <stop stop-color="#E9B9D6"></stop>
                                <stop offset="1" stop-color="#8F6BAE"></stop>
                            </linearGradient>
                            <clipPath id="clip0_2604_30768">
                                <rect width="121" height="44" fill="white"></rect>
                            </clipPath>
                        </defs>
                    </svg>
                    RecMan</a></div>
            <div class="col-4 d-flex justify-content-end align-items-center">
                {if $user}
                    {if $smarty.server.REQUEST_URI == '/'}
                        <a class="btn btn-sm" href="/dashboard">Admin panel</a>
                     {else}
                        <a class="btn btn-sm" href="/">Site</a>
                    {/if}
                    <a class="btn btn-sm" href="/logout">Log out</a>
                {elseif $login}
                    <a class="btn btn-sm" href="/login">Sign in</a>
                    <a class="btn btn-sm" href="/registration">Sign up</a>
                {/if}
            </div>
        </div>
    </header>
</div>
{if $alert_message}
    <div class="container">
        <div class="alert alert-danger" role="alert">
            {$alert_message}
        </div>
    </div>
{/if}

{block name="content"}{/block}
</body>
