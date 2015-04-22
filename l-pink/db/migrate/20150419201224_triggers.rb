class Triggers < ActiveRecord::Migration
  def change


  	execute " INSERT INTO users(
            id, email, encrypted_password, reset_password_token, reset_password_sent_at, 
            remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, 
            current_sign_in_ip, last_sign_in_ip, nombre, apellido, tipo, created_at, 
            updated_at)
    VALUES (1, 'alex.garate@usach.cl', '$2a$10$0QU8DoDLwrSX5BME9WUQEerR0RRXSxVz/E5i/IGTW.TwP400Ez3km', 'NULL', '2014-11-29 15:00:00', 
            '2014-11-29 15:00:00', 0, '2014-11-29 15:00:00', '2014-11-29 15:00:00', 
            '127.0.0.1', '127.0.0.1', 'alex', 'garate', 'alumno', '2014-11-29 15:00:00', 
            '2014-11-29 15:00:00');
 "    
 execute " INSERT INTO users(
            id, email, encrypted_password, reset_password_token, reset_password_sent_at, 
            remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, 
            current_sign_in_ip, last_sign_in_ip, nombre, apellido, tipo, created_at, 
            updated_at)
    VALUES (2, 'camilo.jimenez@usach.cl', '$2a$10$0QU8DoDLwrSX5BME9WUQEerR0RRXSxVz/E5i/IGTW.TwP400Ez3km', 'NULL1', '2014-11-29 15:00:00', 
            '2014-11-29 15:00:00', 0, '2014-11-29 15:00:00', '2014-11-29 15:00:00', 
            '127.0.0.1', '127.0.0.1', 'camilo', 'jimenez', 'alumno', '2014-11-29 15:00:00', 
            '2014-11-29 15:00:00');
 "    
 execute " INSERT INTO users(
            id, email, encrypted_password, reset_password_token, reset_password_sent_at, 
            remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, 
            current_sign_in_ip, last_sign_in_ip, nombre, apellido, tipo, created_at, 
            updated_at)
    VALUES (3, 'benjamin.ruiztagle@usach.cl', '$2a$10$0QU8DoDLwrSX5BME9WUQEerR0RRXSxVz/E5i/IGTW.TwP400Ez3km', 'NULL2', '2014-11-29 15:00:00', 
            '2014-11-29 15:00:00', 0, '2014-11-29 15:00:00', '2014-11-29 15:00:00', 
            '127.0.0.1', '127.0.0.1', 'benjamin', 'ruiztagle', 'alumno', '2014-11-29 15:00:00', 
            '2014-11-29 15:00:00');
 "    
 execute " INSERT INTO users(
            id, email, encrypted_password, reset_password_token, reset_password_sent_at, 
            remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, 
            current_sign_in_ip, last_sign_in_ip, nombre, apellido, tipo, created_at, 
            updated_at)
    VALUES (4, 'yerko.pino@usach.cl', '$2a$10$0QU8DoDLwrSX5BME9WUQEerR0RRXSxVz/E5i/IGTW.TwP400Ez3km', 'NULL3', '2014-11-29 15:00:00', 
            '2014-11-29 15:00:00', 0, '2014-11-29 15:00:00', '2014-11-29 15:00:00', 
            '127.0.0.1', '127.0.0.1', 'yerko', 'pino', 'alumno', '2014-11-29 15:00:00', 
            '2014-11-29 15:00:00');
 "    
 execute " INSERT INTO users(
            id, email, encrypted_password, reset_password_token, reset_password_sent_at, 
            remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, 
            current_sign_in_ip, last_sign_in_ip, nombre, apellido, tipo, created_at, 
            updated_at)
    VALUES (5, 'matias.quinteros@usach.cl', '$2a$10$0QU8DoDLwrSX5BME9WUQEerR0RRXSxVz/E5i/IGTW.TwP400Ez3km', 'NULL4', '2014-11-29 15:00:00', 
            '2014-11-29 15:00:00', 0, '2014-11-29 15:00:00', '2014-11-29 15:00:00', 
            '127.0.0.1', '127.0.0.1', 'matias', 'quinteros', 'alumno', '2014-11-29 15:00:00', 
            '2014-11-29 15:00:00');
 "    
 execute " INSERT INTO users(
            id, email, encrypted_password, reset_password_token, reset_password_sent_at, 
            remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, 
            current_sign_in_ip, last_sign_in_ip, nombre, apellido, tipo, created_at, 
            updated_at)
    VALUES (6, 'ismael.vicencio@usach.cl', '$2a$10$0QU8DoDLwrSX5BME9WUQEerR0RRXSxVz/E5i/IGTW.TwP400Ez3km', 'NULL5', '2014-11-29 15:00:00', 
            '2014-11-29 15:00:00', 0, '2014-11-29 15:00:00', '2014-11-29 15:00:00', 
            '127.0.0.1', '127.0.0.1', 'ismael', 'vicencio', 'alumno', '2014-11-29 15:00:00', 
            '2014-11-29 15:00:00');
 "    
 execute " INSERT INTO users(
            id, email, encrypted_password, reset_password_token, reset_password_sent_at, 
            remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, 
            current_sign_in_ip, last_sign_in_ip, nombre, apellido, tipo, created_at, 
            updated_at)
    VALUES (7, 'daniel.vargas@usach.cl', '$2a$10$0QU8DoDLwrSX5BME9WUQEerR0RRXSxVz/E5i/IGTW.TwP400Ez3km', 'NULL6', '2014-11-29 15:00:00', 
            '2014-11-29 15:00:00', 0, '2014-11-29 15:00:00', '2014-11-29 15:00:00', 
            '127.0.0.1', '127.0.0.1', 'daniel', 'vargas', 'alumno', '2014-11-29 15:00:00', 
            '2014-11-29 15:00:00');
 "   
  execute " INSERT INTO users(
            id, email, encrypted_password, reset_password_token, reset_password_sent_at, 
            remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, 
            current_sign_in_ip, last_sign_in_ip, nombre, apellido, tipo, created_at, 
            updated_at)
    VALUES (8, 'jose.cortes@usach.cl', '$2a$10$0QU8DoDLwrSX5BME9WUQEerR0RRXSxVz/E5i/IGTW.TwP400Ez3km', 'NULL7', '2014-11-29 15:00:00', 
            '2014-11-29 15:00:00', 0, '2014-11-29 15:00:00', '2014-11-29 15:00:00', 
            '127.0.0.1', '127.0.0.1', 'jose', 'cortes', 'alumno', '2014-11-29 15:00:00', 
            '2014-11-29 15:00:00');
 "    
 execute " INSERT INTO users(
            id, email, encrypted_password, reset_password_token, reset_password_sent_at, 
            remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, 
            current_sign_in_ip, last_sign_in_ip, nombre, apellido, tipo, created_at, 
            updated_at)
    VALUES (9, 'cristobal.vasquez@usach.cl', '$2a$10$0QU8DoDLwrSX5BME9WUQEerR0RRXSxVz/E5i/IGTW.TwP400Ez3km', 'NULL8', '2014-11-29 15:00:00', 
            '2014-11-29 15:00:00', 0, '2014-11-29 15:00:00', '2014-11-29 15:00:00', 
            '127.0.0.1', '127.0.0.1', 'cristobal', 'vasquez', 'alumno', '2014-11-29 15:00:00', 
            '2014-11-29 15:00:00');
 "    
 execute " INSERT INTO users(
            id, email, encrypted_password, reset_password_token, reset_password_sent_at, 
            remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, 
            current_sign_in_ip, last_sign_in_ip, nombre, apellido, tipo, created_at, 
            updated_at)
    VALUES (10, 'pablo.salinas@usach.cl', '$2a$10$0QU8DoDLwrSX5BME9WUQEerR0RRXSxVz/E5i/IGTW.TwP400Ez3km', 'NULL9', '2014-11-29 15:00:00', 
            '2014-11-29 15:00:00', 0, '2014-11-29 15:00:00', '2014-11-29 15:00:00', 
            '127.0.0.1', '127.0.0.1', 'pablo', 'salinas', 'alumno', '2014-11-29 15:00:00', 
            '2014-11-29 15:00:00');
 "

  end
end
