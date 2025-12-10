;; obli-riscv-dev-kit - Guix Package Definition
;; Run: guix shell -D -f guix.scm

(use-modules (guix packages)
             (guix gexp)
             (guix git-download)
             (guix build-system gnu)
             ((guix licenses) #:prefix license:)
             (gnu packages base))

(define-public obli_riscv_dev_kit
  (package
    (name "obli-riscv-dev-kit")
    (version "0.1.0")
    (source (local-file "." "obli-riscv-dev-kit-checkout"
                        #:recursive? #t
                        #:select? (git-predicate ".")))
    (build-system gnu-build-system)
    (synopsis "Guix channel/infrastructure")
    (description "Guix channel/infrastructure - part of the RSR ecosystem.")
    (home-page "https://github.com/hyperpolymath/obli-riscv-dev-kit")
    (license license:agpl3+)))

;; Return package for guix shell
obli_riscv_dev_kit
