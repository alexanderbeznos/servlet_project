package servlets.validation;

import servlets.models.Player;
import servlets.models.User;
import servlets.storage.*;

/**
 * @version 1.0.
 * @since 29.10.2019.
 * @author Alexander Beznos (ast1bn@mail.ru)
 */
public class ValidateServiceUsers {
    /**
     * Ссылка на объект DBStore.
     */
    private final DBUsers objectStore = DBUsers.getInstance();
    private static final ValidateServiceUsers INSTANCE =  new ValidateServiceUsers();

    private ValidateServiceUsers() {
    }

    public static ValidateServiceUsers getInstance() {
        return INSTANCE;
    }

    /**
     * Метод для добавления пользователя в БД.
     * @param user пользователя для добавления
     */
    public void add(User user) throws UserValidationException {
        this.objectStore.add(user);
    }

    /**
     * Метод возвращает пользователя по номеру.
     * @param login номер пользователя игрока.
     */
    public User findByLogin(String login) throws UserValidationException {
        return this.objectStore.findByLogin(login);
    }
}
