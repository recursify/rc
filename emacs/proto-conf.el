(defvar proto-mode-hook nil)
(defvar proto-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map "\C-j" 'newline-and-indent)
    map)
  "Keymap for Protobuf major mode")

(add-to-list 'auto-mode-alist '("\\.proto\\'" . proto-mode))

(defconst proto-font-lock-keywords
  (list
	  '(
			"\\<message\\|required\\|optional\\|oneof\\|enum\\>"
;;			(concat "\\<" (regexp-opt '("message", "required", "optional", "oneof") t) "\\>")
			. font-lock-builtin-face)
   '("\\<string\\|bool\\|bytes\\|fixed32\\|float\\|uint32\\|sint32\\>" . font-lock-type-face))
  "Minimal highlighting expressions for Proto mode")

(define-derived-mode proto-mode c-mode "Proto"
  "Major mode for editing Protobuf files."
  (set (make-local-variable 'font-lock-defaults) '(proto-font-lock-keywords))
;;  (set (make-local-variable 'indent-line-function) 'proto-indent-line))
)
