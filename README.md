# taskflow

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Alcance de TaskFlow

**Problema:** las actividades académicas pueden quedar dispersas y es difícil saber cuáles siguen pendientes.

**Usuario objetivo:** estudiante universitario que organiza sus tareas y entregas de la semana.

### Tareas de ejemplo

- Preparar exposición — prioridad alta — pendiente.
- Revisar apuntes de clase — prioridad alta — pendiente.
- Revisar navegación de TaskFlow — prioridad baja — completada.
- Organizar entregas de la semana — prioridad alta — pendiente.
- Avanzar proyecto académico — prioridad media — pendiente.

### Historias de usuario y criterios de aceptación

1. Como estudiante, quiero ver mis tareas para identificar qué debo hacer.  
   **Criterio:** la lista muestra el título, la prioridad y el estado de cada tarea.

2. Como estudiante, quiero abrir una tarea para consultar su información.  
   **Criterio:** al tocar una tarjeta aparece el detalle de esa misma tarea.

3. Como estudiante, quiero crear una tarea para registrar un pendiente.  
   **Criterio:** al guardar una tarea válida, aparece en la lista.

4. Como estudiante, quiero editar una tarea para corregir sus datos.  
   **Criterio:** los cambios guardados aparecen en la lista y en el detalle.

5. Como estudiante, quiero eliminar una tarea terminada para limpiar la lista.  
   **Criterio:** después de confirmar la eliminación, la tarea desaparece.

Las funciones de crear, editar y eliminar se implementarán en sesiones posteriores.

### Modelo de datos

`Task` contiene:

- `id`: identificador entero único.
- `title`: título de la tarea.
- `description`: descripción.
- `priority`: prioridad alta, media o baja.
- `isCompleted`: indica si está completada.
- `userId`: identificador entero del usuario de prueba; en los ejemplos se usa `1`.

### Pantallas previstas

- **Lista:** tarjetas con las tareas y una futura acción para crear.
- **Detalle:** información completa de la tarea.
- **Formulario:** campos para el título, la descripción y la prioridad.

### Requisitos de calidad

- La navegación usa textos comprensibles.
- Si se busca un identificador inexistente, la app muestra un mensaje.

### API prevista

Estas son operaciones que TaskFlow podría necesitar más adelante; todavía no hay una API conectada.

- `GET /tasks` — listar tareas.
- `GET /tasks/:id` — consultar el detalle.
- `POST /tasks` — crear una tarea.
- `PATCH /tasks/:id` — actualizar una tarea.
- `DELETE /tasks/:id` — eliminar una tarea.

## API de tareas

La aplicación consulta JSONPlaceholder en:
https://jsonplaceholder.typicode.com/todos?userId=2

El parámetro `userId` filtra las tareas del usuario 2. La API entrega los campos `userId`, `id`, `title` y `completed`. TaskFlow completa `description` y `priority` con valores de ejemplo porque la API no los proporciona.

Al marcar una tarea como completada, el cambio se conserva solo en memoria y se pierde al recargar la aplicación. La API de práctica no guarda ese cambio.