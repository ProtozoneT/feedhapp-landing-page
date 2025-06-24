document.addEventListener('DOMContentLoaded', function() {
    // --- Código del acordeón (Sección de Herramientas) ---
    const accordionItems = document.querySelectorAll('.accordion-item');

    accordionItems.forEach(item => {
        const header = item.querySelector('.accordion-header');

        if (header) { // Asegura que el header existe para evitar errores
            header.addEventListener('click', () => {
                // Cierra otros ítems de acordeón si están activos
                accordionItems.forEach(otherItem => {
                    if (otherItem !== item && otherItem.classList.contains('active')) {
                        otherItem.classList.remove('active');
                    }
                });
                item.classList.toggle('active');
            });
        }
    });

    // --- Código del carrusel de testimonios ---
    const testimonials = [
        {
            text: "Desde que comencé a usar Feedh App, he logrado mejorar mis hábitos alimenticios de manera sencilla y efectiva. Las recomendaciones personalizadas me han ayudado a entender mejor lo que mi cuerpo necesita, y el seguimiento constante me motiva a seguir adelante.",
            author: "Mariana F.",
            age: "24 años",
            image: "public/assets/images/usuario1.png"
        },
        {
            text: "Feedh App ha sido un cambio total en mi vida. Antes luchaba por mantenerme en forma y comer bien, pero ahora con los planes y el seguimiento personalizado, he alcanzado mis metas de peso y me siento increíble. ¡Lo recomiendo a cualquiera que busque mejorar su salud!",
            author: "Carlos P.",
            age: "35 años",
            image: "public/assets/images/usuario2.png"
        },
        {
            text: "Como madre ocupada, necesitaba una solución práctica para comer saludable. Feedh App me ha facilitado la planificación de mis comidas y las de mi familia. Es intuitiva, fácil de usar y me ayuda a mantener el control de mi nutrición sin complicaciones.",
            author: "Sofía G.",
            age: "42 años",
            image: "public/assets/images/usuario3.png"
        }
    ];

    let currentIndex = 0;
    const testimonialText = document.getElementById('testimonial-text');
    const testimonialAuthor = document.getElementById('testimonial-author');
    const testimonialAge = document.getElementById('testimonial-age');
    const testimonialUserImage = document.getElementById('testimonial-user-image');
    const prevArrow = document.querySelector('.prev-arrow');
    const nextArrow = document.querySelector('.next-arrow');
    const paginationDotsContainer = document.querySelector('.pagination-dots');
    const testimonialTextArea = document.querySelector('.testimonial-text-area');

    function updateTestimonial() {
        if (!testimonialUserImage || !testimonialTextArea || !testimonialText || !testimonialAuthor || !testimonialAge || !paginationDotsContainer) {
            console.error('Uno o más elementos del carrusel no fueron encontrados. Asegúrate de que los IDs y clases en el HTML sean correctos.');
            return; // Detiene la ejecución si los elementos no existen
        }

        testimonialUserImage.style.opacity = '0';
        testimonialTextArea.style.opacity = '0';

        setTimeout(() => {
            const currentTestimonial = testimonials[currentIndex];

            testimonialText.textContent = currentTestimonial.text;
            testimonialAuthor.textContent = currentTestimonial.author;
            testimonialAge.textContent = currentTestimonial.age;
            testimonialUserImage.src = currentTestimonial.image;

            const dots = paginationDotsContainer.querySelectorAll('.dot');
            dots.forEach((dot, index) => {
                if (index === currentIndex) {
                    dot.classList.add('active');
                } else {
                    dot.classList.remove('active');
                }
            });

            testimonialUserImage.style.opacity = '1';
            testimonialTextArea.style.opacity = '1';
        }, 300);
    }

    if (prevArrow) {
        prevArrow.addEventListener('click', () => {
            currentIndex = (currentIndex - 1 + testimonials.length) % testimonials.length;
            updateTestimonial();
        });
    }

    if (nextArrow) {
        nextIndex = (currentIndex + 1) % testimonials.length;
        nextArrow.addEventListener('click', () => {
            currentIndex = (currentIndex + 1) % testimonials.length;
            updateTestimonial();
        });
    }

    if (paginationDotsContainer) {
        paginationDotsContainer.innerHTML = '';
        testimonials.forEach((_, index) => {
            const dot = document.createElement('span');
            dot.classList.add('dot');
            if (index === 0) {
                dot.classList.add('active');
            }
            dot.addEventListener('click', () => {
                currentIndex = index;
                updateTestimonial();
            });
            paginationDotsContainer.appendChild(dot);
        });
    }

    // Inicializar el primer testimonio si los elementos existen
    if (testimonialText && testimonialAuthor && testimonialAge && testimonialUserImage) {
        updateTestimonial();
    }


    // --- Código para scroll suave ---
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function (e) {
            e.preventDefault(); // Evita el comportamiento predeterminado del enlace

            const targetId = this.getAttribute('href');
            const targetElement = document.querySelector(targetId);

            if (targetElement) {
                const header = document.querySelector('.main-header');
                const headerOffset = header ? header.offsetHeight : 0;

                const elementPosition = targetElement.getBoundingClientRect().top + window.pageYOffset;
                const offsetPosition = elementPosition - headerOffset;

                window.scrollTo({
                    top: offsetPosition,
                    behavior: 'smooth' 
                });
            }
        });
    });

    // --- Código para las Preguntas Frecuentes (FAQ) ---
    const faqItems = document.querySelectorAll('.faq-item');

    faqItems.forEach(item => {
        const question = item.querySelector('.faq-question');

        question.addEventListener('click', () => {
            faqItems.forEach(otherItem => {
                if (otherItem !== item && otherItem.classList.contains('open')) {
                    otherItem.classList.remove('open');
                }
            });
            item.classList.toggle('open');
        });
    });
});
