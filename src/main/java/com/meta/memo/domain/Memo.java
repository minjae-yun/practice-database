package com.meta.memo.domain;

import com.meta.memo.dto.MemoRequestDto;
import com.meta.memo.dto.MemoResponseDto;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class Memo {
  private Long id;
  private String username;
  private String contents;

  public Memo(MemoRequestDto memoRequestDto){
    this.username = memoRequestDto.getUsername();
    this.contents = memoRequestDto.getContents();
  }

  public Memo(MemoResponseDto memoResponseDto){
    this.username = memoResponseDto.getUsername();
    this.contents = memoResponseDto.getContents();
  }

}
