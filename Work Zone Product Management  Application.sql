CREATE TABLE `users` (
  `id_user` integer PRIMARY KEY,
  `first_name` varchar(255),
  `last_name` varchar(255),
  `email` varchar(255),
  `picture` varchar(255)
);

CREATE TABLE `roles` (
  `id_role` integer PRIMARY KEY,
  `role_name` varchar(255)
);

CREATE TABLE `applications` (
  `id_application` integer PRIMARY KEY,
  `name` varchar(255),
  `icon` varchar(255),
  `launch_url` varchar(255)
);

CREATE TABLE `roles_applications` (
  `id_role` integer,
  `id_application` integer
);

CREATE TABLE `users_roles` (
  `id_user` integer,
  `id_role` integer
);

ALTER TABLE `users_roles` ADD FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);

ALTER TABLE `roles_applications` ADD FOREIGN KEY (`id_role`) REFERENCES `roles` (`id_role`);

ALTER TABLE `users_roles` ADD FOREIGN KEY (`id_role`) REFERENCES `roles` (`id_role`);

ALTER TABLE `roles_applications` ADD FOREIGN KEY (`id_application`) REFERENCES `applications` (`id_application`);
