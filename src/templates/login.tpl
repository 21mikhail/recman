{assign var="login" value="1"}
{extends file='system/layout.tpl'}
{block name="content"}
    <div class="container mt-5">
        <div class="row">
            <div class="col-4 m-auto">
                <form action="/login" method="POST" id="form-login-main">
                    <input type="hidden" name="csrf_token" value="{$csrf_token}">
                    <div class="mb-3">
                        <label for="email_login" class="form-label">Email address</label>
                        <input type="email" autocomplete="off" name="email" required class="form-control" id="email_login" value="test@recman.io">
                    </div>
                    <div class="mb-3">
                        <label for="email_pass" class="form-label">Password</label>
                        <input type="password" name="password" required class="form-control" id="email_pass" value="123123">
                    </div>
                    <button type="submit" class="btn btn-dark text-white">Sign in</button>
                </form>
            </div>
        </div>
    </div>
{/block}
