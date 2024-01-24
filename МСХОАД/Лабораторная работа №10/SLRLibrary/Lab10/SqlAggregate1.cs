using System;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Net.Mail;
using System.Net;
using Microsoft.SqlServer.Server;

public partial class StoredProcedures
{
	[Microsoft.SqlServer.Server.SqlProcedure]
	public static void SendEmailOnUpdate(SqlString tableName, SqlString emailAddress)
	{
		using (SqlConnection connection = new SqlConnection("context connection=true"))
		{
			connection.Open();

			SqlCommand command = new SqlCommand();
			command.Connection = connection;

			// Проверка обновлений в таблице
			command.CommandText = $"SELECT * FROM BOOKS";
			SqlDataReader reader = command.ExecuteReader();

			if (reader.HasRows)
			{
				// Отправка электронного письма
				MailMessage mail = new MailMessage();
				mail.From = new MailAddress("bankahl36@gmail.com"); // Замените на ваш электронный адрес
				mail.To.Add(emailAddress.Value);
				mail.Subject = "Обновление данных в таблице";
				mail.Body = $"Данные в таблице {tableName.Value} были обновлены.";

				SmtpClient smtp = new SmtpClient("smtp.gmail.com"); // Замените настройками вашего почтового сервера
				smtp.Port = 587;
				smtp.Credentials = new NetworkCredential("bankahl36@gmail.com", "0344533LexaDanik510"); // Замените на ваш логин и пароль
				smtp.EnableSsl = true;

				smtp.Send(mail);
			}

			reader.Close();
		}
	}
};
