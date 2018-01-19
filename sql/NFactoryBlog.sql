-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 19 jan. 2018 à 16:18
-- Version du serveur :  10.1.26-MariaDB
-- Version de PHP :  7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `nfactoryblog`
--

-- --------------------------------------------------------

--
-- Structure de la table `t_articles`
--

CREATE TABLE `t_articles` (
  `ID_ARTICLE` int(11) NOT NULL,
  `ARTTITRE` varchar(45) NOT NULL,
  `ARTCHAPO` varchar(255) DEFAULT NULL,
  `ARTCONTENU` text NOT NULL,
  `ARTDATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_articles`
--

INSERT INTO `t_articles` (`ID_ARTICLE`, `ARTTITRE`, `ARTCHAPO`, `ARTCONTENU`, `ARTDATE`) VALUES
(11, 'LE GRAND BLEU', 'Info + synopsis', '&lt;p style=&quot;margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;&quot;&gt;&lt;em&gt;&lt;strong&gt;Le Grand Bleu&lt;/strong&gt;&lt;/em&gt;&amp;nbsp;est un&amp;nbsp;&lt;a style=&quot;text-decoration-line: none; color: #0b0080; background: none;&quot; title=&quot;Drame (cin&amp;eacute;ma)&quot; href=&quot;https://fr.wikipedia.org/wiki/Drame_(cin%C3%A9ma)&quot;&gt;film dramatique&lt;/a&gt;&amp;nbsp;&lt;a style=&quot;text-decoration-line: none; color: #0b0080; background: none;&quot; title=&quot;Cin&amp;eacute;ma fran&amp;ccedil;ais&quot; href=&quot;https://fr.wikipedia.org/wiki/Cin%C3%A9ma_fran%C3%A7ais&quot;&gt;franco&lt;/a&gt;-&lt;a style=&quot;text-decoration-line: none; color: #0b0080; background: none;&quot; title=&quot;Cin&amp;eacute;ma italien&quot; href=&quot;https://fr.wikipedia.org/wiki/Cin%C3%A9ma_italien&quot;&gt;italo&lt;/a&gt;-&lt;a style=&quot;text-decoration-line: none; color: #0b0080; background: none;&quot; title=&quot;Cin&amp;eacute;ma am&amp;eacute;ricain&quot; href=&quot;https://fr.wikipedia.org/wiki/Cin%C3%A9ma_am%C3%A9ricain&quot;&gt;am&amp;eacute;ricain&lt;/a&gt;&amp;nbsp;co&amp;eacute;crit, coproduit et r&amp;eacute;alis&amp;eacute; par&amp;nbsp;&lt;a style=&quot;text-decoration-line: none; color: #0b0080; background: none;&quot; title=&quot;Luc Besson&quot; href=&quot;https://fr.wikipedia.org/wiki/Luc_Besson&quot;&gt;Luc Besson&lt;/a&gt;, sorti en&amp;nbsp;&lt;a style=&quot;text-decoration-line: none; color: #0b0080; background: none;&quot; title=&quot;1988 au cin&amp;eacute;ma&quot; href=&quot;https://fr.wikipedia.org/wiki/1988_au_cin%C3%A9ma&quot;&gt;1988&lt;/a&gt;. Le film est librement inspir&amp;eacute; des vies de&amp;nbsp;&lt;a style=&quot;text-decoration-line: none; color: #0b0080; background: none;&quot; title=&quot;&quot; href=&quot;https://fr.wikipedia.org/wiki/Jacques_Mayol&quot;&gt;Jacques Mayol&lt;/a&gt;&amp;nbsp;et&amp;nbsp;&lt;a style=&quot;text-decoration-line: none; color: #0b0080; background: none;&quot; title=&quot;Enzo Maiorca&quot; href=&quot;https://fr.wikipedia.org/wiki/Enzo_Maiorca&quot;&gt;Enzo Maiorca&lt;/a&gt;, c&amp;eacute;l&amp;egrave;bres&amp;nbsp;&lt;a style=&quot;text-decoration-line: none; color: #0b0080; background: none;&quot; title=&quot;Champion&quot; href=&quot;https://fr.wikipedia.org/wiki/Champion&quot;&gt;champions&lt;/a&gt;de&amp;nbsp;&lt;a style=&quot;text-decoration-line: none; color: #0b0080; background: none;&quot; title=&quot;Apn&amp;eacute;e (sport)&quot; href=&quot;https://fr.wikipedia.org/wiki/Apn%C3%A9e_(sport)&quot;&gt;plong&amp;eacute;e en apn&amp;eacute;e&lt;/a&gt;.&lt;/p&gt;\r\n&lt;p style=&quot;margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;&quot;&gt;Le film re&amp;ccedil;ut six nominations aux&amp;nbsp;&lt;a style=&quot;text-decoration-line: none; color: #0b0080; background: none;&quot; title=&quot;C&amp;eacute;sar du cin&amp;eacute;ma&quot; href=&quot;https://fr.wikipedia.org/wiki/C%C3%A9sar_du_cin%C3%A9ma&quot;&gt;C&amp;eacute;sar&lt;/a&gt;&amp;nbsp;(dont celui du meilleur film, meilleur r&amp;eacute;alisateur, meilleur acteur) dont il en emporta le&amp;nbsp;&lt;a style=&quot;text-decoration-line: none; color: #0b0080; background: none;&quot; title=&quot;C&amp;eacute;sar de la meilleure musique originale&quot; href=&quot;https://fr.wikipedia.org/wiki/C%C3%A9sar_de_la_meilleure_musique_originale&quot;&gt;C&amp;eacute;sar de la meilleure musique&lt;/a&gt;&amp;nbsp;et du&amp;nbsp;&lt;a style=&quot;text-decoration-line: none; color: #0b0080; background: none;&quot; title=&quot;C&amp;eacute;sar du meilleur son&quot; href=&quot;https://fr.wikipedia.org/wiki/C%C3%A9sar_du_meilleur_son&quot;&gt;meilleur son&lt;/a&gt;.&lt;/p&gt;\r\n&lt;p style=&quot;margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;&quot;&gt;&lt;a style=&quot;text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot; title=&quot;Jacques Mayol&quot; href=&quot;https://fr.wikipedia.org/wiki/Jacques_Mayol&quot;&gt;Jacques Mayol&lt;/a&gt;&amp;nbsp;et Enzo Molinari se connaissent depuis l\'enfance, dans les&amp;nbsp;&lt;a style=&quot;text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot; title=&quot;Ann&amp;eacute;es 1960&quot; href=&quot;https://fr.wikipedia.org/wiki/Ann%C3%A9es_1960&quot;&gt;ann&amp;eacute;es 1960&lt;/a&gt;. Ils ont grandi ensemble en&amp;nbsp;&lt;a style=&quot;text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot; title=&quot;Gr&amp;egrave;ce&quot; href=&quot;https://fr.wikipedia.org/wiki/Gr%C3%A8ce&quot;&gt;Gr&amp;egrave;ce&lt;/a&gt;&amp;nbsp;et partagent depuis toujours leur passion pour la mer. Mais &amp;agrave; la suite de l\'accident au cours d\'une plong&amp;eacute;e et du d&amp;eacute;c&amp;egrave;s de son p&amp;egrave;re, Jacques revient en&amp;nbsp;&lt;a style=&quot;text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot; title=&quot;France&quot; href=&quot;https://fr.wikipedia.org/wiki/France&quot;&gt;France&lt;/a&gt;. Vingt ans ont pass&amp;eacute;, mais la rivalit&amp;eacute; entre les deux hommes existe toujours. Le championnat du monde d\'&lt;a style=&quot;text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot; title=&quot;Apn&amp;eacute;e No Limit&quot; href=&quot;https://fr.wikipedia.org/wiki/Apn%C3%A9e_No_Limit&quot;&gt;apn&amp;eacute;e No Limit&lt;/a&gt;&amp;nbsp;&amp;agrave;&amp;nbsp;&lt;a style=&quot;text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot; title=&quot;Taormine&quot; href=&quot;https://fr.wikipedia.org/wiki/Taormine&quot;&gt;Taormina&lt;/a&gt;&amp;nbsp;en&amp;nbsp;&lt;a style=&quot;text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot; title=&quot;Sicile&quot; href=&quot;https://fr.wikipedia.org/wiki/Sicile&quot;&gt;Sicile&lt;/a&gt;&amp;nbsp;&amp;agrave; la fin des&amp;nbsp;&lt;a style=&quot;text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot; title=&quot;Ann&amp;eacute;es 1980&quot; href=&quot;https://fr.wikipedia.org/wiki/Ann%C3%A9es_1980&quot;&gt;ann&amp;eacute;es 1980&lt;/a&gt;&amp;nbsp;est l\'occasion pour les deux hommes de se retrouver et d\'explorer un monde que personne ne conna&amp;icirc;t mieux qu\'eux.&lt;/p&gt;', '2018-01-19 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `t_articles_has_t_users`
--

CREATE TABLE `t_articles_has_t_users` (
  `T_ARTICLES_ID_ARTICLE` int(11) NOT NULL,
  `T_USERS_ID_USER` int(11) NOT NULL,
  `T_USERS_T_ROLES_ID_ROLE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_categories`
--

CREATE TABLE `t_categories` (
  `ID_CATEGORIE` int(11) NOT NULL,
  `CATLIBELLE` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_categories_has_t_articles`
--

CREATE TABLE `t_categories_has_t_articles` (
  `T_CATEGORIES_ID_CATEGORIE` int(11) NOT NULL,
  `T_ARTICLES_ID_ARTICLE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_roles`
--

CREATE TABLE `t_roles` (
  `ID_ROLE` int(11) NOT NULL,
  `ROLEDESI` varchar(45) NOT NULL,
  `ROLEDEF` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_roles`
--

INSERT INTO `t_roles` (`ID_ROLE`, `ROLEDESI`, `ROLEDEF`) VALUES
(1, 'ROLE_SUPERADMIN', NULL),
(2, 'ROLE_ADMIN', NULL),
(3, 'ROLE_MODERATEUR', NULL),
(4, 'ROLE_REDACTEUR', NULL),
(5, 'ROLE_UTILISATEUR', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `t_users`
--

CREATE TABLE `t_users` (
  `ID_USER` int(11) NOT NULL,
  `USERNAME` varchar(45) NOT NULL,
  `USERFNAME` varchar(45) DEFAULT NULL,
  `USERMAIL` varchar(255) NOT NULL,
  `USERPASSWORD` char(40) NOT NULL,
  `USERDATEINS` datetime DEFAULT NULL,
  `T_ROLES_ID_ROLE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_users`
--

INSERT INTO `t_users` (`ID_USER`, `USERNAME`, `USERFNAME`, `USERMAIL`, `USERPASSWORD`, `USERDATEINS`, `T_ROLES_ID_ROLE`) VALUES
(3, 'hugo', 'zoulou', 'a@a.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, 5),
(4, 'Hugo2', 'ratel2', 'ratelhugo2@gmail2.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, 5),
(5, 'Hugo', 'Ratel', 'ratelhugo@gmail.com', '4970d665c1ee6f0971f3cd2c51d9843ef4c38c8d', NULL, 1),
(6, 'Zank', 'Zank', 'zank@a.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, 5),
(9, 'Oulala', 'ilili', 'ilili@a.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', NULL, 5),
(10, 'Bonjour', 'Hufo', 'hufo@a.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', NULL, 5),
(11, 'Abdul', 'az', 'azzzz@a.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', NULL, 5),
(12, 'qaaaz', 'azdzadaz', 'azzzzz@a.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', NULL, 5),
(13, 'Gauthier', 'Bouffon', 'GBF@a.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', NULL, 5),
(14, 'jfry', 'lrmt', 'jfrmt@a.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', NULL, 5),
(15, 'aaazz', 'azeazea', 'aaaa@aaa.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', NULL, 5),
(16, 'azazearrazr', 'azazaz', 'aaaaa@aaaaa.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', NULL, 5),
(17, 'azezaz', 'azeazaze', 'a@aaazaz.comaza', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', NULL, 5);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `t_articles`
--
ALTER TABLE `t_articles`
  ADD PRIMARY KEY (`ID_ARTICLE`);

--
-- Index pour la table `t_articles_has_t_users`
--
ALTER TABLE `t_articles_has_t_users`
  ADD PRIMARY KEY (`T_ARTICLES_ID_ARTICLE`,`T_USERS_ID_USER`,`T_USERS_T_ROLES_ID_ROLE`),
  ADD KEY `fk_T_ARTICLES_has_T_USERS_T_USERS1_idx` (`T_USERS_ID_USER`,`T_USERS_T_ROLES_ID_ROLE`),
  ADD KEY `fk_T_ARTICLES_has_T_USERS_T_ARTICLES1_idx` (`T_ARTICLES_ID_ARTICLE`);

--
-- Index pour la table `t_categories`
--
ALTER TABLE `t_categories`
  ADD PRIMARY KEY (`ID_CATEGORIE`);

--
-- Index pour la table `t_categories_has_t_articles`
--
ALTER TABLE `t_categories_has_t_articles`
  ADD PRIMARY KEY (`T_CATEGORIES_ID_CATEGORIE`,`T_ARTICLES_ID_ARTICLE`),
  ADD KEY `fk_T_CATEGORIES_has_T_ARTICLES_T_ARTICLES1_idx` (`T_ARTICLES_ID_ARTICLE`),
  ADD KEY `fk_T_CATEGORIES_has_T_ARTICLES_T_CATEGORIES1_idx` (`T_CATEGORIES_ID_CATEGORIE`);

--
-- Index pour la table `t_roles`
--
ALTER TABLE `t_roles`
  ADD PRIMARY KEY (`ID_ROLE`);

--
-- Index pour la table `t_users`
--
ALTER TABLE `t_users`
  ADD PRIMARY KEY (`ID_USER`,`T_ROLES_ID_ROLE`),
  ADD KEY `fk_T_USERS_T_ROLES_idx` (`T_ROLES_ID_ROLE`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `t_articles`
--
ALTER TABLE `t_articles`
  MODIFY `ID_ARTICLE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `t_categories`
--
ALTER TABLE `t_categories`
  MODIFY `ID_CATEGORIE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `t_roles`
--
ALTER TABLE `t_roles`
  MODIFY `ID_ROLE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `t_users`
--
ALTER TABLE `t_users`
  MODIFY `ID_USER` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `t_articles_has_t_users`
--
ALTER TABLE `t_articles_has_t_users`
  ADD CONSTRAINT `fk_T_ARTICLES_has_T_USERS_T_ARTICLES1` FOREIGN KEY (`T_ARTICLES_ID_ARTICLE`) REFERENCES `t_articles` (`ID_ARTICLE`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_T_ARTICLES_has_T_USERS_T_USERS1` FOREIGN KEY (`T_USERS_ID_USER`,`T_USERS_T_ROLES_ID_ROLE`) REFERENCES `t_users` (`ID_USER`, `T_ROLES_ID_ROLE`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `t_categories_has_t_articles`
--
ALTER TABLE `t_categories_has_t_articles`
  ADD CONSTRAINT `fk_T_CATEGORIES_has_T_ARTICLES_T_ARTICLES1` FOREIGN KEY (`T_ARTICLES_ID_ARTICLE`) REFERENCES `t_articles` (`ID_ARTICLE`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_T_CATEGORIES_has_T_ARTICLES_T_CATEGORIES1` FOREIGN KEY (`T_CATEGORIES_ID_CATEGORIE`) REFERENCES `t_categories` (`ID_CATEGORIE`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `t_users`
--
ALTER TABLE `t_users`
  ADD CONSTRAINT `fk_T_USERS_T_ROLES` FOREIGN KEY (`T_ROLES_ID_ROLE`) REFERENCES `t_roles` (`ID_ROLE`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
