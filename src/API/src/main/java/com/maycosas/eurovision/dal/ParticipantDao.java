package com.maycosas.eurovision.dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.maycosas.eurovision.entities.Participant;

@Repository
public class ParticipantDao {

	@Autowired
	private CountriesDao countriesDao;

	public List<Participant> findAllCountries() throws SQLException {

		try (Connection conn = getConn(); Statement query = conn.createStatement()) {
			try (ResultSet rs = query.executeQuery("SELECT * FROM participant")) {
				List<Participant> participants = new ArrayList<>();

				while (rs.next()) {
					Participant participant = new Participant();
					participant.setId(rs.getInt("id"));
					participant.setCountry(countriesDao.findCountry(rs.getInt("country_id")));
					participant.setName(rs.getString("name"));
					participant.setSong(rs.getString("song"));
					participant.setYear(rs.getInt("year"));
					participant.setSong_link(rs.getString("song_link"));
					participant.setLanguage(rs.getString("language"));

					participants.add(participant);
				}

				return participants;
			}
		}
	}

	public Connection getConn() {
		try {
			Class.forName("org.postgresql.Driver");
		} catch (ClassNotFoundException ex) {
			System.out.println("Error al registrar el driver de PostgreSQL: " + ex);
		}

		Connection connection = null;
		// Database connect
		// Conectamos con la base de datos
		try {
			connection = DriverManager.getConnection("jdbc:postgresql://127.0.0.1:5432/eurovision", "mayte", "");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return connection;

	}
}
