<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Festival Experiencia Viva</title>
    <style>
        body{
            background-color: rgb(144, 145, 145);
            font-family: Arial, Helvetica, sans-serif;
        }

        div.login {
            background-color: rgb(247, 248, 248);
            height: 400px;
            width: 250px; 
            text-aling: center;
        }
       form { 
            
            flex-direction: column;
            display: flex;
            height: 100px;
            width: 100px; 
                   
            
            display: grid;
            
        }
       

    </style>
</head>
<body>
    <div >

        <div class="login">
                <h1>Bem vindo ao Festival Experiencia Viva</h1>

                <p>Login</p>
            
                <form action="">
                    

                    <label for="email">Email</label>
                    <input type="email" name="email" id="email" placeholder="@seuemail.com" required>

                    <label for="senha">Senha</label>
                    <input type="password" name="senha" id="senha" placeholder="8 a 16 caracteres" required>

                    <input type="button" value="Entrar">

                </form>

            
        </div>


    </div>
    

    
</body>
</html>