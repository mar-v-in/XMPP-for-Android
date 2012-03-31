.class public Lorg/xmlpull/v1/XmlPullParserFactory;
.super Ljava/lang/Object;
.source "XmlPullParserFactory.java"


# static fields
.field public static final PROPERTY_NAME:Ljava/lang/String; = "org.xmlpull.v1.XmlPullParserFactory"

.field private static final RESOURCE_NAME:Ljava/lang/String; = "/META-INF/services/org.xmlpull.v1.XmlPullParserFactory"

.field static final referenceContextClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/xmlpull/v1/XmlPullParserFactory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected classNamesLocation:Ljava/lang/String;

.field protected features:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected parserClasses:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected serializerClasses:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-direct {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;-><init>()V

    .line 43
    .local v0, f:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/xmlpull/v1/XmlPullParserFactory;->referenceContextClass:Ljava/lang/Class;

    .line 37
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/Hashtable;

    .line 192
    return-void
.end method

.method public static newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-static {v0, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance(Ljava/lang/String;Ljava/lang/Class;)Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/Class;)Lorg/xmlpull/v1/XmlPullParserFactory;
    .locals 20
    .parameter "classNames"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/xmlpull/v1/XmlPullParserFactory;",
            ">;)",
            "Lorg/xmlpull/v1/XmlPullParserFactory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 76
    .local p1, context:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/xmlpull/v1/XmlPullParserFactory;>;"
    if-nez p1, :cond_0

    .line 82
    sget-object p1, Lorg/xmlpull/v1/XmlPullParserFactory;->referenceContextClass:Ljava/lang/Class;

    .line 85
    :cond_0
    const/4 v5, 0x0

    .line 87
    .local v5, classNamesLocation:Ljava/lang/String;
    if-eqz p0, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_1

    .line 88
    const-string v17, "DEFAULT"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 91
    :cond_1
    :try_start_0
    const-string v17, "/META-INF/services/org.xmlpull.v1.XmlPullParserFactory"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 93
    .local v10, is:Ljava/io/InputStream;
    if-nez v10, :cond_2

    .line 94
    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    .line 95
    const-string v18, "resource not found: /META-INF/services/org.xmlpull.v1.XmlPullParserFactory make sure that parser implementing XmlPull API is available"

    .line 94
    invoke-direct/range {v17 .. v18}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v10           #is:Ljava/io/InputStream;
    :catch_0
    move-exception v7

    .line 113
    .local v7, e:Ljava/lang/Exception;
    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v17

    .line 99
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v10       #is:Ljava/io/InputStream;
    :cond_2
    :try_start_1
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 102
    .local v15, sb:Ljava/lang/StringBuffer;
    :cond_3
    :goto_0
    invoke-virtual {v10}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 103
    .local v4, ch:I
    if-gez v4, :cond_5

    .line 109
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 111
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p0

    .line 115
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "resource /META-INF/services/org.xmlpull.v1.XmlPullParserFactory that contained \'"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 115
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 122
    .end local v4           #ch:I
    .end local v10           #is:Ljava/io/InputStream;
    .end local v15           #sb:Ljava/lang/StringBuffer;
    :goto_1
    const/4 v8, 0x0

    .line 123
    .local v8, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    .line 124
    .local v12, parserClasses:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Class<*>;>;"
    new-instance v16, Ljava/util/Vector;

    invoke-direct/range {v16 .. v16}, Ljava/util/Vector;-><init>()V

    .line 125
    .local v16, serializerClasses:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Class<*>;>;"
    const/4 v13, 0x0

    .line 127
    .local v13, pos:I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-lt v13, v0, :cond_7

    .line 169
    if-nez v8, :cond_4

    .line 170
    new-instance v8, Lorg/xmlpull/v1/XmlPullParserFactory;

    .end local v8           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-direct {v8}, Lorg/xmlpull/v1/XmlPullParserFactory;-><init>()V

    .line 172
    .restart local v8       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_4
    iput-object v12, v8, Lorg/xmlpull/v1/XmlPullParserFactory;->parserClasses:Ljava/util/Vector;

    .line 173
    move-object/from16 v0, v16

    iput-object v0, v8, Lorg/xmlpull/v1/XmlPullParserFactory;->serializerClasses:Ljava/util/Vector;

    .line 174
    iput-object v5, v8, Lorg/xmlpull/v1/XmlPullParserFactory;->classNamesLocation:Ljava/lang/String;

    .line 175
    return-object v8

    .line 105
    .end local v8           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v12           #parserClasses:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Class<*>;>;"
    .end local v13           #pos:I
    .end local v16           #serializerClasses:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Class<*>;>;"
    .restart local v4       #ch:I
    .restart local v10       #is:Ljava/io/InputStream;
    .restart local v15       #sb:Ljava/lang/StringBuffer;
    :cond_5
    const/16 v17, 0x20

    move/from16 v0, v17

    if-le v4, v0, :cond_3

    .line 106
    int-to-char v0, v4

    move/from16 v17, v0

    :try_start_2
    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 118
    .end local v4           #ch:I
    .end local v10           #is:Ljava/io/InputStream;
    .end local v15           #sb:Ljava/lang/StringBuffer;
    :cond_6
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "parameter classNames to newInstance() that contained \'"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 118
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 128
    .restart local v8       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v12       #parserClasses:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Class<*>;>;"
    .restart local v13       #pos:I
    .restart local v16       #serializerClasses:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Class<*>;>;"
    :cond_7
    const/16 v17, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 130
    .local v6, cut:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v6, v0, :cond_8

    .line 131
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 133
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 135
    .local v11, name:Ljava/lang/String;
    const/4 v3, 0x0

    .line 136
    .local v3, candidate:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v9, 0x0

    .line 139
    .local v9, instance:Ljava/lang/Object;
    :try_start_3
    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 141
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v9

    .line 145
    .end local v9           #instance:Ljava/lang/Object;
    :goto_3
    if-eqz v3, :cond_d

    .line 146
    const/4 v14, 0x0

    .line 147
    .local v14, recognized:Z
    instance-of v0, v9, Lorg/xmlpull/v1/XmlPullParser;

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 148
    invoke-virtual {v12, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 149
    const/4 v14, 0x1

    .line 151
    :cond_9
    instance-of v0, v9, Lorg/xmlpull/v1/XmlSerializer;

    move/from16 v17, v0

    if-eqz v17, :cond_a

    .line 152
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 153
    const/4 v14, 0x1

    .line 155
    :cond_a
    instance-of v0, v9, Lorg/xmlpull/v1/XmlPullParserFactory;

    move/from16 v17, v0

    if-eqz v17, :cond_c

    .line 156
    if-nez v8, :cond_b

    move-object v8, v9

    .line 157
    check-cast v8, Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 159
    :cond_b
    const/4 v14, 0x1

    .line 161
    :cond_c
    if-nez v14, :cond_d

    .line 162
    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "incompatible class: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 162
    invoke-direct/range {v17 .. v18}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 166
    .end local v14           #recognized:Z
    :cond_d
    add-int/lit8 v13, v6, 0x1

    goto/16 :goto_2

    .line 142
    .restart local v9       #instance:Ljava/lang/Object;
    :catch_1
    move-exception v17

    goto :goto_3
.end method


# virtual methods
.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 206
    iget-object v1, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 207
    .local v0, value:Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNamespaceAware()Z
    .locals 1

    .prologue
    .line 220
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isValidating()Z
    .locals 1

    .prologue
    .line 232
    const-string v0, "http://xmlpull.org/v1/doc/features.html#validation"

    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public newPullParser()Lorg/xmlpull/v1/XmlPullParser;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 247
    iget-object v8, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->parserClasses:Ljava/util/Vector;

    if-nez v8, :cond_0

    .line 248
    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    .line 249
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Factory initialization was incomplete - has not tried "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    iget-object v10, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->classNamesLocation:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 249
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 248
    invoke-direct {v8, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 253
    :cond_0
    iget-object v8, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->parserClasses:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 254
    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    .line 255
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "No valid parser classes found in "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->classNamesLocation:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 254
    invoke-direct {v8, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 258
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 260
    .local v3, issues:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v8, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->parserClasses:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-lt v2, v8, :cond_2

    .line 283
    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "could not create parser: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 261
    :cond_2
    iget-object v8, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->parserClasses:Ljava/util/Vector;

    invoke-virtual {v8, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    .line 263
    .local v6, ppClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/xmlpull/v1/XmlPullParser;

    .line 268
    .local v5, pp:Lorg/xmlpull/v1/XmlPullParser;
    iget-object v8, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/Hashtable;

    invoke-virtual {v8}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 269
    .local v0, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    .line 268
    if-nez v8, :cond_4

    .line 276
    return-object v5

    .line 270
    :cond_4
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 271
    .local v4, key:Ljava/lang/String;
    iget-object v8, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/Hashtable;

    invoke-virtual {v8, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    .line 272
    .local v7, value:Ljava/lang/Boolean;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 273
    const/4 v8, 0x1

    invoke-interface {v5, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 278
    .end local v0           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #pp:Lorg/xmlpull/v1/XmlPullParser;
    .end local v7           #value:Ljava/lang/Boolean;
    :catch_0
    move-exception v1

    .line 279
    .local v1, ex:Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public newSerializer()Lorg/xmlpull/v1/XmlSerializer;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 300
    iget-object v5, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->serializerClasses:Ljava/util/Vector;

    if-nez v5, :cond_0

    .line 301
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    .line 302
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Factory initialization incomplete - has not tried "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 303
    iget-object v7, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->classNamesLocation:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 302
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 301
    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 305
    :cond_0
    iget-object v5, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->serializerClasses:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 306
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    .line 307
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "No valid serializer classes found in "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    iget-object v7, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->classNamesLocation:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 307
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 306
    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 311
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 313
    .local v2, issues:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->serializerClasses:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v1, v5, :cond_2

    .line 333
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "could not create serializer: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 333
    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 314
    :cond_2
    iget-object v5, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->serializerClasses:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 316
    .local v3, ppClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    .local v4, ser:Lorg/xmlpull/v1/XmlSerializer;
    return-object v4

    .line 328
    .end local v4           #ser:Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v0

    .line 329
    .local v0, ex:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .parameter "name"
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    return-void
.end method

.method public setNamespaceAware(Z)V
    .locals 3
    .parameter "awareness"

    .prologue
    .line 365
    iget-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/Hashtable;

    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    new-instance v2, Ljava/lang/Boolean;

    .line 366
    invoke-direct {v2, p1}, Ljava/lang/Boolean;-><init>(Z)V

    .line 365
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    return-void
.end method

.method public setValidating(Z)V
    .locals 3
    .parameter "validating"

    .prologue
    .line 381
    iget-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/Hashtable;

    const-string v1, "http://xmlpull.org/v1/doc/features.html#validation"

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    return-void
.end method
