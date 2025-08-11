{assign var="login" value="1"}
{extends file='system/layout.tpl'}
{block name="content"}
    <div class="container mt-5">
        <div class="row">
            <div class="col-4 m-auto">
                <form action="/registration" method="POST" id="form-login-main">
                    <input type="hidden" name="csrf_token" value="{$csrf_token}">
                    <div class="mb-3">
                        <label for="first_name" class="form-label">First name</label>
                        <input type="text" name="first_name" required class="form-control" id="first_name" value="RecMan">
                    </div>
                    <div class="mb-3">
                        <label for="last_name" class="form-label">Last name</label>
                        <input type="text" name="last_name" required class="form-control" id="last_name" value="RecMan">
                    </div>
                    <div class="mb-3">
                        <label for="email_login" class="form-label">Email address</label>
                        <input type="email" name="email" required class="form-control" id="email_login" value="test@recman.io">
                    </div>
                    <div class="mb-3">
                        <label for="phone" class="form-label">Mobile phone</label>
                        <input type="tel" name="phone" required class="form-control" id="phone" value="+1 123 123 123">
                    </div>
                    <div class="mb-3">
                        <label for="email_pass" class="form-label">Password(123123)</label>
                        <input type="password" name="password" required class="form-control" id="email_pass" value="123123">
                    </div>
                    <button type="submit" class="btn btn-dark text-white">Sign up</button>
                </form>
            </div>
        </div>
    </div>
{/block}
