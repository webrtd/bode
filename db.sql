SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE IF NOT EXISTS `predefined_ticket` (
  `pid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `ticket` (
  `tid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `text` text NOT NULL,
  `ts` datetime NOT NULL,
  `ticket_uid` int(11) NOT NULL,
  `cid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `predefined_ticket`
  ADD PRIMARY KEY (`pid`);

ALTER TABLE `ticket`
  ADD PRIMARY KEY (`tid`);


ALTER TABLE `predefined_ticket`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `ticket`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT;