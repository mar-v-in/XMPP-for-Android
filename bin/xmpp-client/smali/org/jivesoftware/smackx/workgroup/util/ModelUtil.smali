.class public final Lorg/jivesoftware/smackx/workgroup/util/ModelUtil;
.super Ljava/lang/Object;
.source "ModelUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    return-void
.end method

.method public static final areBooleansDifferent(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .locals 1
    .parameter "b1"
    .parameter "b2"

    .prologue
    .line 43
    invoke-static {p0, p1}, Lorg/jivesoftware/smackx/workgroup/util/ModelUtil;->areBooleansEqual(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final areBooleansEqual(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .locals 1
    .parameter "b1"
    .parameter "b2"

    .prologue
    .line 59
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p0, v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq p1, v0, :cond_2

    .line 60
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    .line 59
    goto :goto_0
.end method

.method public static final areDifferent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 85
    invoke-static {p0, p1}, Lorg/jivesoftware/smackx/workgroup/util/ModelUtil;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 110
    if-ne p0, p1, :cond_0

    .line 111
    const/4 v0, 0x1

    .line 115
    :goto_0
    return v0

    .line 112
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 113
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 115
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static final concat([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "strs"

    .prologue
    .line 127
    const-string v0, " "

    invoke-static {p0, v0}, Lorg/jivesoftware/smackx/workgroup/util/ModelUtil;->concat([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final concat([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "strs"
    .parameter "delim"

    .prologue
    .line 138
    if-eqz p0, :cond_3

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .local v0, buf:Ljava/lang/StringBuilder;
    array-length v3, p0

    .line 141
    .local v3, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v3, :cond_1

    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 148
    .local v2, length:I
    if-lez v2, :cond_0

    .line 150
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 152
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 154
    .end local v0           #buf:Ljava/lang/StringBuilder;
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #n:I
    :goto_1
    return-object v5

    .line 142
    .restart local v0       #buf:Ljava/lang/StringBuilder;
    .restart local v1       #i:I
    .restart local v3       #n:I
    :cond_1
    aget-object v4, p0, v1

    .line 143
    .local v4, str:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 144
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    .end local v0           #buf:Ljava/lang/StringBuilder;
    .end local v1           #i:I
    .end local v3           #n:I
    .end local v4           #str:Ljava/lang/String;
    :cond_3
    const-string v5, ""

    goto :goto_1
.end method

.method public static getTimeFromLong(J)Ljava/lang/String;
    .locals 22
    .parameter "diff"

    .prologue
    .line 159
    const-string v1, "h"

    .line 160
    .local v1, HOURS:Ljava/lang/String;
    const-string v2, "min"

    .line 161
    .local v2, MINUTES:Ljava/lang/String;
    const-string v11, "sec"

    .line 163
    .local v11, SECONDS:Ljava/lang/String;
    const-wide/32 v5, 0x5265c00

    .line 164
    .local v5, MS_IN_A_DAY:J
    const-wide/32 v3, 0x36ee80

    .line 165
    .local v3, MS_IN_AN_HOUR:J
    const-wide/32 v7, 0xea60

    .line 166
    .local v7, MS_IN_A_MINUTE:J
    const-wide/16 v9, 0x3e8

    .line 167
    .local v9, MS_IN_A_SECOND:J
    const-wide/32 v20, 0x5265c00

    rem-long p0, p0, v20

    .line 168
    const-wide/32 v20, 0x36ee80

    div-long v13, p0, v20

    .line 169
    .local v13, numHours:J
    const-wide/32 v20, 0x36ee80

    rem-long p0, p0, v20

    .line 170
    const-wide/32 v20, 0xea60

    div-long v15, p0, v20

    .line 171
    .local v15, numMinutes:J
    const-wide/32 v20, 0xea60

    rem-long p0, p0, v20

    .line 172
    const-wide/16 v20, 0x3e8

    div-long v17, p0, v20

    .line 173
    .local v17, numSeconds:J
    const-wide/16 v20, 0x3e8

    rem-long p0, p0, v20

    .line 174
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .local v12, buf:Ljava/lang/StringBuilder;
    const-wide/16 v20, 0x0

    cmp-long v20, v13, v20

    if-lez v20, :cond_0

    .line 176
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "h"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :cond_0
    const-wide/16 v20, 0x0

    cmp-long v20, v15, v20

    if-lez v20, :cond_1

    .line 180
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "min"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :cond_1
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "sec"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 186
    .local v19, result:Ljava/lang/String;
    return-object v19
.end method

.method public static final hasLength(Ljava/lang/String;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 195
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final hasNonNullElement([Ljava/lang/Object;)Z
    .locals 3
    .parameter "array"

    .prologue
    .line 204
    if-eqz p0, :cond_0

    .line 205
    array-length v1, p0

    .line 206
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 212
    .end local v0           #i:I
    .end local v1           #n:I
    :cond_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 207
    .restart local v0       #i:I
    .restart local v1       #n:I
    :cond_1
    aget-object v2, p0, v0

    if-eqz v2, :cond_2

    .line 208
    const/4 v2, 0x1

    goto :goto_1

    .line 206
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static hasStringChanged(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "oldString"
    .parameter "newString"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 226
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 232
    :cond_0
    :goto_0
    return v0

    .line 228
    :cond_1
    if-nez p0, :cond_2

    if-nez p1, :cond_3

    .line 229
    :cond_2
    if-eqz p0, :cond_4

    if-nez p1, :cond_4

    :cond_3
    move v0, v1

    .line 230
    goto :goto_0

    .line 232
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static iteratorAsList(Ljava/util/Iterator;)Ljava/util/List;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TK;>;)",
            "Ljava/util/List",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<TK;>;"
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 243
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TK;>;"
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 246
    return-object v0

    .line 244
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static final nullifyIfEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 254
    invoke-static {p0}, Lorg/jivesoftware/smackx/workgroup/util/ModelUtil;->hasLength(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static final nullifyingToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "o"

    .prologue
    .line 263
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/workgroup/util/ModelUtil;->nullifyIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static reverseListIterator(Ljava/util/ListIterator;)Ljava/util/Iterator;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ListIterator",
            "<TK;>;)",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 272
    .local p0, i:Ljava/util/ListIterator;,"Ljava/util/ListIterator<TK;>;"
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/util/ReverseListIterator;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/workgroup/util/ReverseListIterator;-><init>(Ljava/util/ListIterator;)V

    return-object v0
.end method
