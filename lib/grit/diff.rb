
    attr_reader :new_file, :deleted_file, :renamed_file
    attr_reader :similarity_index
    attr_accessor :diff

    def initialize(repo, a_path, b_path, a_blob, b_blob, a_mode, b_mode, new_file, deleted_file, diff, renamed_file = false, similarity_index = 0)
      @repo   = repo
      @new_file         = new_file     || @a_blob.nil?
      @deleted_file     = deleted_file || @b_blob.nil?
      @renamed_file     = renamed_file
      @similarity_index = similarity_index.to_i
      @diff             = diff






        sim_index    = 0
        new_file     = false
        renamed_file = false

          a_mode    = nil
          new_file  = true
          m, a_mode    = lines.shift.match(/^deleted file mode (.+)$/)
          b_mode       = nil
        elsif lines.first =~ /^similarity index (\d+)\%/
          sim_index    = $1.to_i
          renamed_file = true
          2.times { lines.shift } # shift away the 2 `rename from/to ...` lines



        diffs << Diff.new(repo, a_path, b_path, a_blob, b_blob, a_mode, b_mode, new_file, deleted_file, diff, renamed_file, sim_index)

