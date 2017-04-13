class CreateLessons < ActiveRecord::Migration[5.0]
  def change
    create_table :crafts do |t|
      t.integer :level
      t.text :topic
      t.references :lesson

      t.timestamps
    end

    create_table :prefaces do |t|
      t.time :length
      t.text :description
      t.text :content
      t.belongs_to :lesson

      t.timestamps
    end

    create_table :primaries do |t|
      t.time :length
      t.text :description
      t.text :content
      t.references :lesson

      t.timestamps
    end

    create_table :exercises do |t|
      t.text :content
      t.references :lesson

      t.timestamps
    end

    create_table :homeworks do |t|
      t.text :content
      t.belongs_to :lesson

      t.timestamps
    end

    create_table :lessons do |t|
      t.text :name
      t.text :group

      t.timestamps
    end
  end
end
