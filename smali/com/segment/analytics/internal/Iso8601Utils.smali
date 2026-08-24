.class final Lcom/segment/analytics/internal/Iso8601Utils;
.super Ljava/lang/Object;
.source "Iso8601Utils.java"


# static fields
.field static final GMT_ID:Ljava/lang/String; = "GMT"

.field static final TIMEZONE_Z:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/segment/analytics/internal/Iso8601Utils;->TIMEZONE_Z:Ljava/util/TimeZone;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkOffset(Ljava/lang/String;IC)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "expected"    # C

    .prologue
    .line 214
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static format(Ljava/util/Date;)Ljava/lang/String;
    .locals 7
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    const/16 v6, 0x3a

    const/16 v5, 0x2d

    .line 48
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v3, Lcom/segment/analytics/internal/Iso8601Utils;->TIMEZONE_Z:Ljava/util/TimeZone;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v3, v4}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 49
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 52
    const-string v3, "yyyy-MM-ddThh:mm:ss.sssZ"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 53
    .local v1, "capacity":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 54
    .local v2, "formatted":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const-string v4, "yyyy"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/segment/analytics/internal/Iso8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 55
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const-string v4, "MM"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/segment/analytics/internal/Iso8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 57
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const-string v4, "dd"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/segment/analytics/internal/Iso8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 59
    const/16 v3, 0x54

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const-string v4, "hh"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/segment/analytics/internal/Iso8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 61
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const-string v4, "mm"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/segment/analytics/internal/Iso8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 63
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const-string v4, "ss"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/segment/analytics/internal/Iso8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 65
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const-string v4, "sss"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/segment/analytics/internal/Iso8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 67
    const/16 v3, 0x5a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static indexOfNonDigit(Ljava/lang/String;I)I
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "offset"    # I

    .prologue
    .line 272
    move v1, p1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 273
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 274
    .local v0, "c":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_0

    const/16 v2, 0x39

    if-le v0, v2, :cond_1

    .line 278
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return v1

    .line 272
    .restart local v0    # "c":C
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 278
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1
.end method

.method private static padInt(Ljava/lang/StringBuilder;II)V
    .locals 3
    .param p0, "buffer"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # I
    .param p2, "length"    # I

    .prologue
    .line 261
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "strValue":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v0, p2, v2

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 263
    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 265
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    return-void
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 30
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    .line 80
    const/16 v17, 0x0

    .line 83
    .local v17, "offset":I
    add-int/lit8 v18, v17, 0x4

    .end local v17    # "offset":I
    .local v18, "offset":I
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/segment/analytics/internal/Iso8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v25

    .line 84
    .local v25, "year":I
    const/16 v26, 0x2d

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/segment/analytics/internal/Iso8601Utils;->checkOffset(Ljava/lang/String;IC)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v26

    if-eqz v26, :cond_0

    .line 85
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "offset":I
    .restart local v17    # "offset":I
    move/from16 v18, v17

    .line 89
    .end local v17    # "offset":I
    .restart local v18    # "offset":I
    :cond_0
    add-int/lit8 v17, v18, 0x2

    .end local v18    # "offset":I
    .restart local v17    # "offset":I
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/segment/analytics/internal/Iso8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v16

    .line 90
    .local v16, "month":I
    const/16 v26, 0x2d

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/segment/analytics/internal/Iso8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v26

    if-eqz v26, :cond_e

    .line 91
    add-int/lit8 v17, v17, 0x1

    move/from16 v18, v17

    .line 95
    .end local v17    # "offset":I
    .restart local v18    # "offset":I
    :goto_0
    add-int/lit8 v17, v18, 0x2

    .end local v18    # "offset":I
    .restart local v17    # "offset":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/segment/analytics/internal/Iso8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v8

    .line 97
    .local v8, "day":I
    const/4 v13, 0x0

    .line 98
    .local v13, "hour":I
    const/4 v15, 0x0

    .line 99
    .local v15, "minutes":I
    const/16 v20, 0x0

    .line 100
    .local v20, "seconds":I
    const/4 v14, 0x0

    .line 104
    .local v14, "milliseconds":I
    const/16 v26, 0x54

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/segment/analytics/internal/Iso8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v12

    .line 106
    .local v12, "hasT":Z
    if-nez v12, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v26

    move/from16 v0, v26

    move/from16 v1, v17

    if-gt v0, v1, :cond_1

    .line 107
    new-instance v6, Ljava/util/GregorianCalendar;

    add-int/lit8 v26, v16, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v6, v0, v1, v8}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 109
    .local v6, "calendar":Ljava/util/Calendar;
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v26

    .line 197
    :goto_1
    return-object v26

    .line 112
    .end local v6    # "calendar":Ljava/util/Calendar;
    :cond_1
    if-eqz v12, :cond_4

    .line 115
    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v18, v17, 0x2

    .end local v17    # "offset":I
    .restart local v18    # "offset":I
    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/segment/analytics/internal/Iso8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v13

    .line 116
    const/16 v26, 0x3a

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/segment/analytics/internal/Iso8601Utils;->checkOffset(Ljava/lang/String;IC)Z
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v26

    if-eqz v26, :cond_2

    .line 117
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "offset":I
    .restart local v17    # "offset":I
    move/from16 v18, v17

    .line 120
    .end local v17    # "offset":I
    .restart local v18    # "offset":I
    :cond_2
    add-int/lit8 v17, v18, 0x2

    .end local v18    # "offset":I
    .restart local v17    # "offset":I
    :try_start_3
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/segment/analytics/internal/Iso8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v15

    .line 121
    const/16 v26, 0x3a

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/segment/analytics/internal/Iso8601Utils;->checkOffset(Ljava/lang/String;IC)Z
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v26

    if-eqz v26, :cond_d

    .line 122
    add-int/lit8 v17, v17, 0x1

    move/from16 v18, v17

    .line 125
    .end local v17    # "offset":I
    .restart local v18    # "offset":I
    :goto_2
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v26

    move/from16 v0, v26

    move/from16 v1, v18

    if-le v0, v1, :cond_c

    .line 126
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v5

    .line 127
    .local v5, "c":C
    const/16 v26, 0x5a

    move/from16 v0, v26

    if-eq v5, v0, :cond_c

    const/16 v26, 0x2b

    move/from16 v0, v26

    if-eq v5, v0, :cond_c

    const/16 v26, 0x2d

    move/from16 v0, v26

    if-eq v5, v0, :cond_c

    .line 128
    add-int/lit8 v17, v18, 0x2

    .end local v18    # "offset":I
    .restart local v17    # "offset":I
    :try_start_5
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/segment/analytics/internal/Iso8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v20

    .line 129
    const/16 v26, 0x3b

    move/from16 v0, v20

    move/from16 v1, v26

    if-le v0, v1, :cond_3

    const/16 v26, 0x3f

    move/from16 v0, v20

    move/from16 v1, v26

    if-ge v0, v1, :cond_3

    .line 130
    const/16 v20, 0x3b

    .line 133
    :cond_3
    const/16 v26, 0x2e

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/segment/analytics/internal/Iso8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 134
    add-int/lit8 v17, v17, 0x1

    .line 135
    add-int/lit8 v26, v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/segment/analytics/internal/Iso8601Utils;->indexOfNonDigit(Ljava/lang/String;I)I

    move-result v10

    .line 136
    .local v10, "endOffset":I
    add-int/lit8 v26, v17, 0x3

    move/from16 v0, v26

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 137
    .local v19, "parseEndOffset":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/segment/analytics/internal/Iso8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v11

    .line 138
    .local v11, "fraction":I
    const-wide/high16 v26, 0x4024000000000000L    # 10.0

    sub-int v28, v19, v17

    rsub-int/lit8 v28, v28, 0x3

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v26

    int-to-double v0, v11

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v14, v0

    .line 139
    move/from16 v17, v10

    .line 146
    .end local v5    # "c":C
    .end local v10    # "endOffset":I
    .end local v11    # "fraction":I
    .end local v19    # "parseEndOffset":I
    :cond_4
    :goto_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v26

    move/from16 v0, v26

    move/from16 v1, v17

    if-gt v0, v1, :cond_5

    .line 147
    new-instance v26, Ljava/lang/IllegalArgumentException;

    const-string v27, "No time zone indicator"

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v26
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1

    .line 200
    .end local v8    # "day":I
    .end local v12    # "hasT":Z
    .end local v13    # "hour":I
    .end local v14    # "milliseconds":I
    .end local v15    # "minutes":I
    .end local v16    # "month":I
    .end local v20    # "seconds":I
    :catch_0
    move-exception v9

    .line 201
    .end local v25    # "year":I
    .local v9, "e":Ljava/lang/RuntimeException;
    :goto_4
    new-instance v26, Ljava/lang/RuntimeException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Not an RFC 3339 date: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v26

    .line 151
    .end local v9    # "e":Ljava/lang/RuntimeException;
    .restart local v8    # "day":I
    .restart local v12    # "hasT":Z
    .restart local v13    # "hour":I
    .restart local v14    # "milliseconds":I
    .restart local v15    # "minutes":I
    .restart local v16    # "month":I
    .restart local v20    # "seconds":I
    .restart local v25    # "year":I
    :cond_5
    :try_start_6
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v23

    .line 153
    .local v23, "timezoneIndicator":C
    const/16 v26, 0x5a

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    .line 154
    sget-object v21, Lcom/segment/analytics/internal/Iso8601Utils;->TIMEZONE_Z:Ljava/util/TimeZone;

    .line 187
    .local v21, "timezone":Ljava/util/TimeZone;
    :cond_6
    :goto_5
    new-instance v6, Ljava/util/GregorianCalendar;

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 188
    .restart local v6    # "calendar":Ljava/util/Calendar;
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setLenient(Z)V

    .line 189
    const/16 v26, 0x1

    move/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 190
    const/16 v26, 0x2

    add-int/lit8 v27, v16, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 191
    const/16 v26, 0x5

    move/from16 v0, v26

    invoke-virtual {v6, v0, v8}, Ljava/util/Calendar;->set(II)V

    .line 192
    const/16 v26, 0xb

    move/from16 v0, v26

    invoke-virtual {v6, v0, v13}, Ljava/util/Calendar;->set(II)V

    .line 193
    const/16 v26, 0xc

    move/from16 v0, v26

    invoke-virtual {v6, v0, v15}, Ljava/util/Calendar;->set(II)V

    .line 194
    const/16 v26, 0xd

    move/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 195
    const/16 v26, 0xe

    move/from16 v0, v26

    invoke-virtual {v6, v0, v14}, Ljava/util/Calendar;->set(II)V

    .line 197
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v26

    goto/16 :goto_1

    .line 155
    .end local v6    # "calendar":Ljava/util/Calendar;
    .end local v21    # "timezone":Ljava/util/TimeZone;
    :cond_7
    const/16 v26, 0x2b

    move/from16 v0, v23

    move/from16 v1, v26

    if-eq v0, v1, :cond_8

    const/16 v26, 0x2d

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    .line 156
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    .line 158
    .local v24, "timezoneOffset":Ljava/lang/String;
    const-string v26, "+0000"

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_9

    const-string v26, "+00:00"

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_a

    .line 159
    :cond_9
    sget-object v21, Lcom/segment/analytics/internal/Iso8601Utils;->TIMEZONE_Z:Ljava/util/TimeZone;

    .restart local v21    # "timezone":Ljava/util/TimeZone;
    goto :goto_5

    .line 163
    .end local v21    # "timezone":Ljava/util/TimeZone;
    :cond_a
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "GMT"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 164
    .local v22, "timezoneId":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v21

    .line 165
    .restart local v21    # "timezone":Ljava/util/TimeZone;
    invoke-virtual/range {v21 .. v21}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, "act":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_6

    .line 172
    const-string v26, ":"

    const-string v27, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 173
    .local v7, "cleaned":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_6

    .line 174
    new-instance v26, Ljava/lang/IndexOutOfBoundsException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Mismatching time zone indicator: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " given, resolves to "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 178
    invoke-virtual/range {v21 .. v21}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 200
    .end local v4    # "act":Ljava/lang/String;
    .end local v7    # "cleaned":Ljava/lang/String;
    .end local v8    # "day":I
    .end local v12    # "hasT":Z
    .end local v13    # "hour":I
    .end local v14    # "milliseconds":I
    .end local v15    # "minutes":I
    .end local v16    # "month":I
    .end local v20    # "seconds":I
    .end local v21    # "timezone":Ljava/util/TimeZone;
    .end local v22    # "timezoneId":Ljava/lang/String;
    .end local v23    # "timezoneIndicator":C
    .end local v24    # "timezoneOffset":Ljava/lang/String;
    :catch_1
    move-exception v9

    goto/16 :goto_4

    .line 183
    .restart local v8    # "day":I
    .restart local v12    # "hasT":Z
    .restart local v13    # "hour":I
    .restart local v14    # "milliseconds":I
    .restart local v15    # "minutes":I
    .restart local v16    # "month":I
    .restart local v20    # "seconds":I
    .restart local v23    # "timezoneIndicator":C
    :cond_b
    new-instance v26, Ljava/lang/IndexOutOfBoundsException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Invalid time zone indicator \'"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\'"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v26
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1

    .line 200
    .end local v8    # "day":I
    .end local v12    # "hasT":Z
    .end local v13    # "hour":I
    .end local v14    # "milliseconds":I
    .end local v15    # "minutes":I
    .end local v16    # "month":I
    .end local v17    # "offset":I
    .end local v20    # "seconds":I
    .end local v23    # "timezoneIndicator":C
    .end local v25    # "year":I
    .restart local v18    # "offset":I
    :catch_2
    move-exception v9

    move/from16 v17, v18

    .end local v18    # "offset":I
    .restart local v17    # "offset":I
    goto/16 :goto_4

    .end local v17    # "offset":I
    .restart local v18    # "offset":I
    :catch_3
    move-exception v9

    move/from16 v17, v18

    .end local v18    # "offset":I
    .restart local v17    # "offset":I
    goto/16 :goto_4

    .end local v17    # "offset":I
    .restart local v8    # "day":I
    .restart local v12    # "hasT":Z
    .restart local v13    # "hour":I
    .restart local v14    # "milliseconds":I
    .restart local v15    # "minutes":I
    .restart local v16    # "month":I
    .restart local v18    # "offset":I
    .restart local v20    # "seconds":I
    .restart local v25    # "year":I
    :cond_c
    move/from16 v17, v18

    .end local v18    # "offset":I
    .restart local v17    # "offset":I
    goto/16 :goto_3

    :cond_d
    move/from16 v18, v17

    .end local v17    # "offset":I
    .restart local v18    # "offset":I
    goto/16 :goto_2

    .end local v8    # "day":I
    .end local v12    # "hasT":Z
    .end local v13    # "hour":I
    .end local v14    # "milliseconds":I
    .end local v15    # "minutes":I
    .end local v18    # "offset":I
    .end local v20    # "seconds":I
    .restart local v17    # "offset":I
    :cond_e
    move/from16 v18, v17

    .end local v17    # "offset":I
    .restart local v18    # "offset":I
    goto/16 :goto_0
.end method

.method private static parseInt(Ljava/lang/String;II)I
    .locals 7
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    .line 228
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-gt p2, v4, :cond_0

    if-le p1, p2, :cond_1

    .line 229
    :cond_0
    new-instance v4, Ljava/lang/NumberFormatException;

    invoke-direct {v4, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 232
    :cond_1
    move v1, p1

    .line 233
    .local v1, "i":I
    const/4 v3, 0x0

    .line 235
    .local v3, "result":I
    if-ge v1, p2, :cond_5

    .line 236
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 237
    .local v0, "digit":I
    if-gez v0, :cond_2

    .line 238
    new-instance v4, Ljava/lang/NumberFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 240
    :cond_2
    neg-int v3, v0

    .line 242
    .end local v0    # "digit":I
    :goto_0
    if-ge v2, p2, :cond_4

    .line 243
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 244
    .restart local v0    # "digit":I
    if-gez v0, :cond_3

    .line 245
    new-instance v4, Ljava/lang/NumberFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 247
    :cond_3
    mul-int/lit8 v3, v3, 0xa

    .line 248
    sub-int/2addr v3, v0

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 250
    .end local v0    # "digit":I
    :cond_4
    neg-int v4, v3

    return v4

    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_5
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0
.end method
