package demo.spring.boot.demospringboot.util;

import org.apdplat.word.WordSegmenter;
import org.apdplat.word.segmentation.Word;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

/**
 * 分词工具
 */
//@Component
public class WordUtil {

    static {
        /**
         * 项目启动就调用(加载分词)
         */
        WordSegmenter.seg("加载分词init");
    }

    public static List<String> seg(String source) {
        List<String> result = new ArrayList<>();
        List<Word> words = WordSegmenter.seg(source);
        words.forEach(word -> {
            result.add(word.getText());
        });
        return result;
    }

}
