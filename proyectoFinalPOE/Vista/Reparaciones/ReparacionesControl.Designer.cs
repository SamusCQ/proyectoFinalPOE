﻿namespace proyectoFinalPOE.Vista.Reparaciones
{
    partial class ReparacionesControl
    {
        private System.ComponentModel.IContainer components = null;
        private DataGridView dgvReparaciones;
        private Button btnNuevaReparacion;

        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        private void InitializeComponent()
        {
            dgvReparaciones = new DataGridView();
            btnEliminar = new DataGridViewButtonColumn();
            btnEstado = new DataGridViewButtonColumn();
            btnNuevaReparacion = new Button();
            label1 = new Label();
            ((System.ComponentModel.ISupportInitialize)dgvReparaciones).BeginInit();
            SuspendLayout();
            // 
            // dgvReparaciones
            // 
            dgvReparaciones.BackgroundColor = Color.White;
            dgvReparaciones.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dgvReparaciones.Columns.AddRange(new DataGridViewColumn[] { btnEliminar, btnEstado });
            dgvReparaciones.Location = new Point(3, 86);
            dgvReparaciones.Name = "dgvReparaciones";
            dgvReparaciones.Size = new Size(490, 328);
            dgvReparaciones.TabIndex = 0;
            // 
            // btnEliminar
            // 
            btnEliminar.HeaderText = "Eliminar";
            btnEliminar.Name = "btnEliminar";
            btnEliminar.Text = "Eliminar";
            btnEliminar.UseColumnTextForButtonValue = true;
            // 
            // btnEstado
            // 
            btnEstado.HeaderText = "Estado";
            btnEstado.Name = "btnEstado";
            btnEstado.Text = "Estado";
            btnEstado.UseColumnTextForButtonValue = true;
            // 
            // btnNuevaReparacion
            // 
            btnNuevaReparacion.Location = new Point(346, 57);
            btnNuevaReparacion.Name = "btnNuevaReparacion";
            btnNuevaReparacion.Size = new Size(132, 23);
            btnNuevaReparacion.TabIndex = 1;
            btnNuevaReparacion.Text = "Nueva Reparacion";
            btnNuevaReparacion.UseVisualStyleBackColor = true;
            btnNuevaReparacion.Click += btnNuevaReparacion_Click;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(16, 20);
            label1.Name = "label1";
            label1.Size = new Size(77, 15);
            label1.TabIndex = 2;
            label1.Text = "Reparaciones";
            // 
            // ReparacionesControl
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.White;
            Controls.Add(label1);
            Controls.Add(btnNuevaReparacion);
            Controls.Add(dgvReparaciones);
            Font = new Font("Segoe UI", 9F, FontStyle.Regular, GraphicsUnit.Point, 0);
            Name = "ReparacionesControl";
            Size = new Size(496, 417);
            ((System.ComponentModel.ISupportInitialize)dgvReparaciones).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        private DataGridViewButtonColumn btnEliminar;
        private DataGridViewButtonColumn btnEstado;
        private Label label1;
    }
}
