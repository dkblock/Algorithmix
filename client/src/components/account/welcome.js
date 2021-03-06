import React from "react";

const Welcome = ({ fullName, email }) => (
  <div className="account-info">
    <div>Добро пожаловать, {fullName}! Благодарим Вас за регистрацию на сайте Algorithmix!</div>
    <div>
      На Ваш электронный адрес ({email}) было отправлено сообщение, содержащее ссылку для подтверждения e-mail адреса.
      Пожалуйста, перейдите по этой ссылке для завершения регистрации.
    </div>
    <div>Если Вы не обнаружите письмо, проверьте папку "Спам" - возможно, оно попало туда по ошибке.</div>
    <i>
      Обратите внимание: Вы не сможете восстановить пароль в случае его утраты, если Ваш e-mail адрес не подтверждён
    </i>
  </div>
);

export default Welcome;
