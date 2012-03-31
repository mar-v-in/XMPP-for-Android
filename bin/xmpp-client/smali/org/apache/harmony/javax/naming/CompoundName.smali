.class public Lorg/apache/harmony/javax/naming/CompoundName;
.super Ljava/lang/Object;
.source "CompoundName.java"

# interfaces
.implements Lorg/apache/harmony/javax/naming/Name;


# static fields
.field private static final BEGIN_QUOTE:Ljava/lang/String; = "jndi.syntax.beginquote"

.field private static final BEGIN_QUOTE2:Ljava/lang/String; = "jndi.syntax.beginquote2"

.field private static final DIRECTION:Ljava/lang/String; = "jndi.syntax.direction"

.field private static final END_QUOTE:Ljava/lang/String; = "jndi.syntax.endquote"

.field private static final END_QUOTE2:Ljava/lang/String; = "jndi.syntax.endquote2"

.field private static final ESCAPE:Ljava/lang/String; = "jndi.syntax.escape"

.field private static final FLAT:Ljava/lang/String; = "flat"

.field private static final IGNORE_CASE:Ljava/lang/String; = "jndi.syntax.ignorecase"

.field private static final INIT_STATUS:I = 0x3

.field private static final LEFT_TO_RIGHT:Ljava/lang/String; = "left_to_right"

.field private static final NORMAL_STATUS:I = 0x0

.field private static final NULL_STRING:Ljava/lang/String; = ""

.field private static final QUOTE1_STATUS:I = 0x1

.field private static final QUOTE2_STATUS:I = 0x2

.field private static final QUOTEEND_STATUS:I = 0x4

.field private static final RIGHT_TO_LEFT:Ljava/lang/String; = "right_to_left"

.field private static final SEPARATOR:Ljava/lang/String; = "jndi.syntax.separator"

.field private static final SEPARATOR2:Ljava/lang/String; = "jndi.syntax.separator2"

.field private static final SEPARATOR_AVA:Ljava/lang/String; = "jndi.syntax.separator.ava"

.field private static final SEPARATOR_TYPEVAL:Ljava/lang/String; = "jndi.syntax.separator.typeval"

.field private static final TRIM_BLANKS:Ljava/lang/String; = "jndi.syntax.trimblanks"

.field private static final serialVersionUID:J = 0x30c10a57ed3791c4L


# instance fields
.field private transient beginQuoteString:Ljava/lang/String;

.field private transient beginQuoteString2:Ljava/lang/String;

.field private transient direction:Ljava/lang/String;

.field private transient elems:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient endQuoteString:Ljava/lang/String;

.field private transient endQuoteString2:Ljava/lang/String;

.field private transient escapeString:Ljava/lang/String;

.field private transient flat:Z

.field private transient ignoreCase:Z

.field protected transient impl:Lorg/apache/harmony/javax/naming/NameImpl;

.field protected transient mySyntax:Ljava/util/Properties;

.field private transient sepAvaString:Ljava/lang/String;

.field private transient sepTypeValString:Ljava/lang/String;

.field private transient separatorString:Ljava/lang/String;

.field private transient separatorString2:Ljava/lang/String;

.field private transient trimBlanks:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 1
    .parameter "s"
    .parameter "props"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    new-instance v0, Lorg/apache/harmony/javax/naming/NameImpl;

    invoke-direct {v0}, Lorg/apache/harmony/javax/naming/NameImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/javax/naming/CompoundName;->impl:Lorg/apache/harmony/javax/naming/NameImpl;

    .line 354
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 355
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 357
    :cond_1
    invoke-direct {p0, p2}, Lorg/apache/harmony/javax/naming/CompoundName;->init(Ljava/util/Properties;)V

    .line 358
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/CompoundName;->parseName(Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method protected constructor <init>(Ljava/util/Enumeration;Ljava/util/Properties;)V
    .locals 2
    .parameter
    .parameter "props"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Properties;",
            ")V"
        }
    .end annotation

    .prologue
    .line 327
    .local p1, elements:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    new-instance v0, Lorg/apache/harmony/javax/naming/NameImpl;

    invoke-direct {v0}, Lorg/apache/harmony/javax/naming/NameImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/javax/naming/CompoundName;->impl:Lorg/apache/harmony/javax/naming/NameImpl;

    .line 328
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 329
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 331
    :cond_1
    invoke-direct {p0, p2}, Lorg/apache/harmony/javax/naming/CompoundName;->init(Ljava/util/Properties;)V

    .line 332
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/javax/naming/CompoundName;->elems:Ljava/util/Vector;

    .line 333
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_2

    .line 336
    return-void

    .line 334
    :cond_2
    iget-object v1, p0, Lorg/apache/harmony/javax/naming/CompoundName;->elems:Ljava/util/Vector;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addBuffer(Ljava/lang/StringBuilder;Ljava/lang/String;Z)I
    .locals 1
    .parameter "buffer"
    .parameter "des"
    .parameter "include"

    .prologue
    .line 437
    if-eqz p3, :cond_0

    .line 438
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method private addElement(Ljava/lang/StringBuilder;)V
    .locals 3
    .parameter "element"

    .prologue
    const/4 v2, 0x0

    .line 448
    const-string v0, "left_to_right"

    iget-object v1, p0, Lorg/apache/harmony/javax/naming/CompoundName;->direction:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 449
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/CompoundName;->elems:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 453
    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 454
    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/CompoundName;->elems:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private addElement(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "sb"
    .parameter "index"
    .parameter "separator"
    .parameter "begin"
    .parameter "end"

    .prologue
    const/4 v7, 0x0

    .line 458
    iget-object v6, p0, Lorg/apache/harmony/javax/naming/CompoundName;->elems:Ljava/util/Vector;

    invoke-virtual {v6, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 459
    .local v0, elemString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 460
    .local v1, elemStringLength:I
    if-nez v1, :cond_0

    .line 462
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    :goto_0
    return-void

    .line 465
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 466
    .local v5, pos:I
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    const-string v6, ""

    invoke-virtual {v6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, ""

    invoke-virtual {v6, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 468
    const-string v6, ""

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 469
    invoke-virtual {v0, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_3

    .line 471
    invoke-virtual {p1, v5, p4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    .line 474
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    .line 475
    .local v2, endLenght:I
    const/4 v3, 0x0

    .local v3, i:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    invoke-virtual {v0, p5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-gez v4, :cond_2

    .line 480
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .end local v2           #endLenght:I
    .end local v4           #j:I
    :cond_1
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 477
    .restart local v2       #endLenght:I
    .restart local v4       #j:I
    :cond_2
    add-int v6, v5, v4

    iget-object v7, p0, Lorg/apache/harmony/javax/naming/CompoundName;->escapeString:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    iget-object v6, p0, Lorg/apache/harmony/javax/naming/CompoundName;->escapeString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    .line 475
    add-int v3, v4, v2

    goto :goto_1

    .line 482
    .end local v2           #endLenght:I
    .end local v3           #i:I
    .end local v4           #j:I
    :cond_3
    iget-object v6, p0, Lorg/apache/harmony/javax/naming/CompoundName;->beginQuoteString:Ljava/lang/String;

    invoke-direct {p0, v0, v7, v6}, Lorg/apache/harmony/javax/naming/CompoundName;->startsWithFromPos(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 483
    iget-object v6, p0, Lorg/apache/harmony/javax/naming/CompoundName;->beginQuoteString2:Ljava/lang/String;

    invoke-direct {p0, v0, v7, v6}, Lorg/apache/harmony/javax/naming/CompoundName;->startsWithFromPos(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 485
    :cond_4
    iget-object v6, p0, Lorg/apache/harmony/javax/naming/CompoundName;->escapeString:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    iget-object v6, p0, Lorg/apache/harmony/javax/naming/CompoundName;->escapeString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    .line 489
    :cond_5
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    if-ge v3, v1, :cond_1

    .line 490
    iget-object v6, p0, Lorg/apache/harmony/javax/naming/CompoundName;->separatorString:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v6}, Lorg/apache/harmony/javax/naming/CompoundName;->startsWithFromPos(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 491
    add-int v6, v5, v3

    iget-object v7, p0, Lorg/apache/harmony/javax/naming/CompoundName;->escapeString:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    iget-object v6, p0, Lorg/apache/harmony/javax/naming/CompoundName;->escapeString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    .line 493
    iget-object v6, p0, Lorg/apache/harmony/javax/naming/CompoundName;->separatorString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v3, v6

    goto :goto_2

    .line 494
    :cond_6
    iget-object v6, p0, Lorg/apache/harmony/javax/naming/CompoundName;->separatorString2:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v6}, Lorg/apache/harmony/javax/naming/CompoundName;->startsWithFromPos(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 495
    add-int v6, v5, v3

    iget-object v7, p0, Lorg/apache/harmony/javax/naming/CompoundName;->escapeString:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    iget-object v6, p0, Lorg/apache/harmony/javax/naming/CompoundName;->escapeString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    .line 497
    iget-object v6, p0, Lorg/apache/harmony/javax/naming/CompoundName;->separatorString2:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v3, v6

    goto :goto_2

    .line 498
    :cond_7
    iget-object v6, p0, Lorg/apache/harmony/javax/naming/CompoundName;->escapeString:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v6}, Lorg/apache/harmony/javax/naming/CompoundName;->startsWithFromPos(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 499
    add-int v6, v5, v3

    iget-object v7, p0, Lorg/apache/harmony/javax/naming/CompoundName;->escapeString:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    iget-object v6, p0, Lorg/apache/harmony/javax/naming/CompoundName;->escapeString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    .line 501
    iget-object v6, p0, Lorg/apache/harmony/javax/naming/CompoundName;->escapeString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v3, v6

    goto :goto_2

    .line 503
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private equals(Lorg/apache/harmony/javax/naming/Name;II)Z
    .locals 9
    .parameter "name"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v6, 0x0

    .line 577
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/CompoundName;->size()I

    move-result v5

    if-le p3, v5, :cond_0

    move v5, v6

    .line 592
    :goto_0
    return v5

    :cond_0
    move-object v3, p1

    .line 580
    check-cast v3, Lorg/apache/harmony/javax/naming/CompoundName;

    .line 581
    .local v3, otherName:Lorg/apache/harmony/javax/naming/CompoundName;
    invoke-virtual {v3}, Lorg/apache/harmony/javax/naming/CompoundName;->getAll()Ljava/util/Enumeration;

    move-result-object v2

    .line 583
    .local v2, otherEnum:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, p3, :cond_1

    .line 592
    const/4 v5, 0x1

    goto :goto_0

    .line 584
    :cond_1
    iget-object v5, p0, Lorg/apache/harmony/javax/naming/CompoundName;->elems:Ljava/util/Vector;

    add-int v7, v0, p2

    invoke-virtual {v5, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-boolean v7, p0, Lorg/apache/harmony/javax/naming/CompoundName;->ignoreCase:Z

    .line 585
    iget-boolean v8, p0, Lorg/apache/harmony/javax/naming/CompoundName;->trimBlanks:Z

    .line 584
    invoke-direct {p0, v5, v7, v8}, Lorg/apache/harmony/javax/naming/CompoundName;->preProcess(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    .line 586
    .local v4, thisElement:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-boolean v7, p0, Lorg/apache/harmony/javax/naming/CompoundName;->ignoreCase:Z

    .line 587
    iget-boolean v8, p0, Lorg/apache/harmony/javax/naming/CompoundName;->trimBlanks:Z

    .line 586
    invoke-direct {p0, v5, v7, v8}, Lorg/apache/harmony/javax/naming/CompoundName;->preProcess(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 588
    .local v1, otherElement:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v6

    .line 589
    goto :goto_0

    .line 583
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private extractEscapedString(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4
    .parameter "s"
    .parameter "pos"
    .parameter "status"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 645
    const/4 v0, 0x0

    .line 646
    .local v0, result:Ljava/lang/String;
    if-ne p3, v2, :cond_1

    .line 647
    iget-object v1, p0, Lorg/apache/harmony/javax/naming/CompoundName;->endQuoteString:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v1}, Lorg/apache/harmony/javax/naming/CompoundName;->startsWithFromPos(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 648
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/CompoundName;->endQuoteString:Ljava/lang/String;

    .line 669
    :cond_0
    :goto_0
    return-object v0

    .line 649
    :cond_1
    if-ne p3, v3, :cond_2

    .line 650
    iget-object v1, p0, Lorg/apache/harmony/javax/naming/CompoundName;->endQuoteString2:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v1}, Lorg/apache/harmony/javax/naming/CompoundName;->startsWithFromPos(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 651
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/CompoundName;->endQuoteString2:Ljava/lang/String;

    goto :goto_0

    .line 652
    :cond_2
    if-eq p3, v2, :cond_0

    if-eq p3, v3, :cond_0

    .line 653
    iget-object v1, p0, Lorg/apache/harmony/javax/naming/CompoundName;->beginQuoteString:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v1}, Lorg/apache/harmony/javax/naming/CompoundName;->startsWithFromPos(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 654
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/CompoundName;->beginQuoteString:Ljava/lang/String;

    goto :goto_0

    .line 655
    :cond_3
    iget-object v1, p0, Lorg/apache/harmony/javax/naming/CompoundName;->beginQuoteString2:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v1}, Lorg/apache/harmony/javax/naming/CompoundName;->startsWithFromPos(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 656
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/CompoundName;->beginQuoteString2:Ljava/lang/String;

    goto :goto_0

    .line 657
    :cond_4
    iget-object v1, p0, Lorg/apache/harmony/javax/naming/CompoundName;->endQuoteString:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v1}, Lorg/apache/harmony/javax/naming/CompoundName;->startsWithFromPos(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 658
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/CompoundName;->endQuoteString:Ljava/lang/String;

    goto :goto_0

    .line 659
    :cond_5
    iget-object v1, p0, Lorg/apache/harmony/javax/naming/CompoundName;->endQuoteString2:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v1}, Lorg/apache/harmony/javax/naming/CompoundName;->startsWithFromPos(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 660
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/CompoundName;->endQuoteString2:Ljava/lang/String;

    goto :goto_0

    .line 661
    :cond_6
    iget-object v1, p0, Lorg/apache/harmony/javax/naming/CompoundName;->separatorString:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v1}, Lorg/apache/harmony/javax/naming/CompoundName;->startsWithFromPos(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 662
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/CompoundName;->separatorString:Ljava/lang/String;

    goto :goto_0

    .line 663
    :cond_7
    iget-object v1, p0, Lorg/apache/harmony/javax/naming/CompoundName;->separatorString2:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v1}, Lorg/apache/harmony/javax/naming/CompoundName;->startsWithFromPos(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 664
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/CompoundName;->separatorString2:Ljava/lang/String;

    goto :goto_0

    .line 665
    :cond_8
    iget-object v1, p0, Lorg/apache/harmony/javax/naming/CompoundName;->escapeString:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v1}, Lorg/apache/harmony/javax/naming/CompoundName;->startsWithFromPos(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 666
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/CompoundName;->escapeString:Ljava/lang/String;

    goto :goto_0
.end method

.method private init(Ljava/util/Properties;)V
    .locals 4
    .parameter "props"

    .prologue
    const/4 v2, 0x0

    .line 730
    iput-boolean v2, p0, Lorg/apache/harmony/javax/naming/CompoundName;->trimBlanks:Z

    .line 731
    iput-boolean v2, p0, Lorg/apache/harmony/javax/naming/CompoundName;->ignoreCase:Z

    .line 732
    iput-object p1, p0, Lorg/apache/harmony/javax/naming/CompoundName;->mySyntax:Ljava/util/Properties;

    .line 737
    const-string v1, "jndi.syntax.direction"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, property:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, "flat"

    :goto_0
    iput-object v1, p0, Lorg/apache/harmony/javax/naming/CompoundName;->direction:Ljava/lang/String;

    .line 741
    const-string v1, "left_to_right"

    iget-object v3, p0, Lorg/apache/harmony/javax/naming/CompoundName;->direction:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 742
    const-string v1, "right_to_left"

    iget-object v3, p0, Lorg/apache/harmony/javax/naming/CompoundName;->direction:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "flat"

    iget-object v3, p0, Lorg/apache/harmony/javax/naming/CompoundName;->direction:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 745
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "jndi.04"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v1, v0

    .line 738
    goto :goto_0

    .line 747
    :cond_1
    const-string v1, "flat"

    iget-object v3, p0, Lorg/apache/harmony/javax/naming/CompoundName;->direction:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/harmony/javax/naming/CompoundName;->flat:Z

    .line 749
    iget-boolean v1, p0, Lorg/apache/harmony/javax/naming/CompoundName;->flat:Z

    if-eqz v1, :cond_2

    const-string v1, ""

    :goto_1
    iput-object v1, p0, Lorg/apache/harmony/javax/naming/CompoundName;->separatorString:Ljava/lang/String;

    .line 751
    iget-object v1, p0, Lorg/apache/harmony/javax/naming/CompoundName;->separatorString:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lorg/apache/harmony/javax/naming/CompoundName;->flat:Z

    if-nez v1, :cond_3

    .line 754
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "jndi.05"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 749
    :cond_2
    const-string v1, "jndi.syntax.separator"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 756
    :cond_3
    iget-boolean v1, p0, Lorg/apache/harmony/javax/naming/CompoundName;->flat:Z

    if-nez v1, :cond_4

    .line 757
    const-string v1, "jndi.syntax.separator2"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    :cond_4
    const-string v1, ""

    .line 756
    :goto_2
    iput-object v1, p0, Lorg/apache/harmony/javax/naming/CompoundName;->separatorString2:Ljava/lang/String;

    .line 760
    const-string v1, "jndi.syntax.ignorecase"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lorg/apache/harmony/javax/naming/CompoundName;->ignoreCase:Z

    .line 763
    const-string v1, "jndi.syntax.trimblanks"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    :goto_4
    iput-boolean v2, p0, Lorg/apache/harmony/javax/naming/CompoundName;->trimBlanks:Z

    .line 765
    const-string v1, "jndi.syntax.escape"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, ""

    .end local v0           #property:Ljava/lang/String;
    :cond_5
    iput-object v0, p0, Lorg/apache/harmony/javax/naming/CompoundName;->escapeString:Ljava/lang/String;

    .line 767
    const-string v1, "jndi.syntax.beginquote"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #property:Ljava/lang/String;
    if-nez v0, :cond_6

    const-string v0, ""

    .end local v0           #property:Ljava/lang/String;
    :cond_6
    iput-object v0, p0, Lorg/apache/harmony/javax/naming/CompoundName;->beginQuoteString:Ljava/lang/String;

    .line 769
    const-string v1, "jndi.syntax.beginquote2"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #property:Ljava/lang/String;
    if-nez v0, :cond_7

    const-string v0, ""

    .end local v0           #property:Ljava/lang/String;
    :cond_7
    iput-object v0, p0, Lorg/apache/harmony/javax/naming/CompoundName;->beginQuoteString2:Ljava/lang/String;

    .line 772
    const-string v1, "jndi.syntax.endquote"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #property:Ljava/lang/String;
    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/apache/harmony/javax/naming/CompoundName;->beginQuoteString:Ljava/lang/String;

    .end local v0           #property:Ljava/lang/String;
    :cond_8
    iput-object v0, p0, Lorg/apache/harmony/javax/naming/CompoundName;->endQuoteString:Ljava/lang/String;

    .line 775
    const-string v1, ""

    iget-object v2, p0, Lorg/apache/harmony/javax/naming/CompoundName;->beginQuoteString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 776
    iget-object v1, p0, Lorg/apache/harmony/javax/naming/CompoundName;->endQuoteString:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/harmony/javax/naming/CompoundName;->beginQuoteString:Ljava/lang/String;

    .line 779
    :cond_9
    const-string v1, "jndi.syntax.endquote2"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #property:Ljava/lang/String;
    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/apache/harmony/javax/naming/CompoundName;->beginQuoteString2:Ljava/lang/String;

    .end local v0           #property:Ljava/lang/String;
    :cond_a
    iput-object v0, p0, Lorg/apache/harmony/javax/naming/CompoundName;->endQuoteString2:Ljava/lang/String;

    .line 782
    const-string v1, ""

    iget-object v2, p0, Lorg/apache/harmony/javax/naming/CompoundName;->beginQuoteString2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 783
    iget-object v1, p0, Lorg/apache/harmony/javax/naming/CompoundName;->endQuoteString2:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/harmony/javax/naming/CompoundName;->beginQuoteString2:Ljava/lang/String;

    .line 787
    :cond_b
    const-string v1, "jndi.syntax.separator.typeval"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #property:Ljava/lang/String;
    if-nez v0, :cond_c

    const-string v0, ""

    .line 786
    .end local v0           #property:Ljava/lang/String;
    :cond_c
    iput-object v0, p0, Lorg/apache/harmony/javax/naming/CompoundName;->sepTypeValString:Ljava/lang/String;

    .line 788
    const-string v1, "jndi.syntax.separator.ava"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #property:Ljava/lang/String;
    if-nez v0, :cond_d

    const-string v0, ""

    .end local v0           #property:Ljava/lang/String;
    :cond_d
    iput-object v0, p0, Lorg/apache/harmony/javax/naming/CompoundName;->sepAvaString:Ljava/lang/String;

    .line 790
    return-void

    .restart local v0       #property:Ljava/lang/String;
    :cond_e
    move-object v1, v0

    .line 757
    goto/16 :goto_2

    .line 761
    :cond_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto/16 :goto_3

    .line 764
    :cond_10
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto/16 :goto_4
.end method

.method private parseName(Ljava/lang/String;)V
    .locals 14
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x4

    const/4 v8, 0x0

    const/4 v11, 0x3

    const/4 v9, 0x1

    .line 801
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    iput-object v10, p0, Lorg/apache/harmony/javax/naming/CompoundName;->elems:Ljava/util/Vector;

    .line 802
    const-string v10, ""

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 899
    :cond_0
    :goto_0
    return-void

    .line 808
    :cond_1
    const/4 v6, 0x3

    .line 809
    .local v6, status:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 810
    .local v0, element:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 811
    .local v4, pos:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 812
    .local v3, length:I
    const/4 v1, 0x0

    .line 813
    .local v1, hasNotNullElement:Z
    const/4 v2, 0x0

    .local v2, includeQuote:Z
    move v5, v4

    .line 816
    .end local v4           #pos:I
    .local v5, pos:I
    :goto_1
    if-lt v5, v3, :cond_2

    .line 889
    if-eq v9, v6, :cond_17

    if-eq v13, v6, :cond_17

    .line 890
    if-nez v1, :cond_16

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-gtz v10, :cond_16

    move v1, v8

    .line 891
    :goto_2
    invoke-direct {p0, v0}, Lorg/apache/harmony/javax/naming/CompoundName;->addElement(Ljava/lang/StringBuilder;)V

    .line 896
    if-nez v1, :cond_0

    .line 897
    iget-object v8, p0, Lorg/apache/harmony/javax/naming/CompoundName;->elems:Ljava/util/Vector;

    iget-object v9, p0, Lorg/apache/harmony/javax/naming/CompoundName;->elems:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 817
    :cond_2
    iget-object v10, p0, Lorg/apache/harmony/javax/naming/CompoundName;->endQuoteString:Ljava/lang/String;

    invoke-direct {p0, p1, v5, v10}, Lorg/apache/harmony/javax/naming/CompoundName;->startsWithFromPos(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 818
    if-ne v6, v9, :cond_3

    .line 819
    const/4 v6, 0x4

    .line 820
    iget-object v10, p0, Lorg/apache/harmony/javax/naming/CompoundName;->endQuoteString:Ljava/lang/String;

    invoke-direct {p0, v0, v10, v2}, Lorg/apache/harmony/javax/naming/CompoundName;->addBuffer(Ljava/lang/StringBuilder;Ljava/lang/String;Z)I

    move-result v10

    add-int v4, v5, v10

    .end local v5           #pos:I
    .restart local v4       #pos:I
    move v5, v4

    .end local v4           #pos:I
    .restart local v5       #pos:I
    goto :goto_1

    .line 821
    :cond_3
    iget-object v10, p0, Lorg/apache/harmony/javax/naming/CompoundName;->endQuoteString2:Ljava/lang/String;

    invoke-direct {p0, p1, v5, v10}, Lorg/apache/harmony/javax/naming/CompoundName;->startsWithFromPos(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 822
    if-ne v6, v13, :cond_4

    .line 823
    const/4 v6, 0x4

    .line 824
    iget-object v10, p0, Lorg/apache/harmony/javax/naming/CompoundName;->endQuoteString2:Ljava/lang/String;

    invoke-direct {p0, v0, v10, v2}, Lorg/apache/harmony/javax/naming/CompoundName;->addBuffer(Ljava/lang/StringBuilder;Ljava/lang/String;Z)I

    move-result v10

    add-int v4, v5, v10

    .end local v5           #pos:I
    .restart local v4       #pos:I
    move v5, v4

    .end local v4           #pos:I
    .restart local v5       #pos:I
    goto :goto_1

    .line 825
    :cond_4
    iget-object v10, p0, Lorg/apache/harmony/javax/naming/CompoundName;->beginQuoteString:Ljava/lang/String;

    invoke-direct {p0, p1, v5, v10}, Lorg/apache/harmony/javax/naming/CompoundName;->startsWithFromPos(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 826
    if-ne v6, v11, :cond_5

    .line 827
    const/4 v1, 0x1

    .line 828
    const/4 v6, 0x1

    .line 829
    iget-object v10, p0, Lorg/apache/harmony/javax/naming/CompoundName;->beginQuoteString:Ljava/lang/String;

    invoke-direct {p0, v0, v10, v2}, Lorg/apache/harmony/javax/naming/CompoundName;->addBuffer(Ljava/lang/StringBuilder;Ljava/lang/String;Z)I

    move-result v10

    add-int v4, v5, v10

    .end local v5           #pos:I
    .restart local v4       #pos:I
    move v5, v4

    .end local v4           #pos:I
    .restart local v5       #pos:I
    goto :goto_1

    .line 830
    :cond_5
    iget-object v10, p0, Lorg/apache/harmony/javax/naming/CompoundName;->beginQuoteString2:Ljava/lang/String;

    invoke-direct {p0, p1, v5, v10}, Lorg/apache/harmony/javax/naming/CompoundName;->startsWithFromPos(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 831
    if-ne v6, v11, :cond_6

    .line 832
    const/4 v1, 0x1

    .line 833
    const/4 v6, 0x2

    .line 834
    iget-object v10, p0, Lorg/apache/harmony/javax/naming/CompoundName;->beginQuoteString2:Ljava/lang/String;

    invoke-direct {p0, v0, v10, v2}, Lorg/apache/harmony/javax/naming/CompoundName;->addBuffer(Ljava/lang/StringBuilder;Ljava/lang/String;Z)I

    move-result v10

    add-int v4, v5, v10

    .end local v5           #pos:I
    .restart local v4       #pos:I
    move v5, v4

    .end local v4           #pos:I
    .restart local v5       #pos:I
    goto :goto_1

    .line 835
    :cond_6
    iget-object v10, p0, Lorg/apache/harmony/javax/naming/CompoundName;->separatorString:Ljava/lang/String;

    invoke-direct {p0, p1, v5, v10}, Lorg/apache/harmony/javax/naming/CompoundName;->startsWithFromPos(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 836
    iget-boolean v10, p0, Lorg/apache/harmony/javax/naming/CompoundName;->flat:Z

    if-nez v10, :cond_9

    .line 837
    if-eq v6, v11, :cond_7

    if-eq v6, v12, :cond_7

    if-nez v6, :cond_9

    .line 838
    :cond_7
    if-nez v1, :cond_8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-gtz v10, :cond_8

    move v1, v8

    .line 839
    :goto_3
    invoke-direct {p0, v0}, Lorg/apache/harmony/javax/naming/CompoundName;->addElement(Ljava/lang/StringBuilder;)V

    .line 840
    const/4 v6, 0x3

    .line 841
    iget-object v10, p0, Lorg/apache/harmony/javax/naming/CompoundName;->separatorString:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int v4, v5, v10

    .line 842
    .end local v5           #pos:I
    .restart local v4       #pos:I
    const/4 v2, 0x0

    move v5, v4

    .end local v4           #pos:I
    .restart local v5       #pos:I
    goto/16 :goto_1

    :cond_8
    move v1, v9

    .line 838
    goto :goto_3

    .line 843
    :cond_9
    iget-object v10, p0, Lorg/apache/harmony/javax/naming/CompoundName;->separatorString2:Ljava/lang/String;

    invoke-direct {p0, p1, v5, v10}, Lorg/apache/harmony/javax/naming/CompoundName;->startsWithFromPos(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 844
    iget-boolean v10, p0, Lorg/apache/harmony/javax/naming/CompoundName;->flat:Z

    if-nez v10, :cond_c

    .line 845
    if-eq v6, v11, :cond_a

    if-eq v6, v12, :cond_a

    if-nez v6, :cond_c

    .line 846
    :cond_a
    if-nez v1, :cond_b

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-gtz v10, :cond_b

    move v1, v8

    .line 847
    :goto_4
    invoke-direct {p0, v0}, Lorg/apache/harmony/javax/naming/CompoundName;->addElement(Ljava/lang/StringBuilder;)V

    .line 848
    const/4 v6, 0x3

    .line 849
    iget-object v10, p0, Lorg/apache/harmony/javax/naming/CompoundName;->separatorString2:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int v4, v5, v10

    .line 850
    .end local v5           #pos:I
    .restart local v4       #pos:I
    const/4 v2, 0x0

    move v5, v4

    .end local v4           #pos:I
    .restart local v5       #pos:I
    goto/16 :goto_1

    :cond_b
    move v1, v9

    .line 846
    goto :goto_4

    .line 851
    :cond_c
    iget-object v10, p0, Lorg/apache/harmony/javax/naming/CompoundName;->escapeString:Ljava/lang/String;

    invoke-direct {p0, p1, v5, v10}, Lorg/apache/harmony/javax/naming/CompoundName;->startsWithFromPos(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 852
    iget-object v10, p0, Lorg/apache/harmony/javax/naming/CompoundName;->escapeString:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int v4, v5, v10

    .line 853
    .end local v5           #pos:I
    .restart local v4       #pos:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v4, v10, :cond_d

    .line 856
    new-instance v8, Lorg/apache/harmony/javax/naming/InvalidNameException;

    .line 857
    const-string v9, "jndi.06"

    iget-object v10, p0, Lorg/apache/harmony/javax/naming/CompoundName;->escapeString:Ljava/lang/String;

    .line 856
    invoke-static {v9, v10}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 861
    :cond_d
    invoke-direct {p0, p1, v4, v6}, Lorg/apache/harmony/javax/naming/CompoundName;->extractEscapedString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    .line 862
    .local v7, str:Ljava/lang/String;
    if-nez v7, :cond_e

    .line 863
    iget-object v10, p0, Lorg/apache/harmony/javax/naming/CompoundName;->escapeString:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v4, v10

    .line 864
    add-int/lit8 v5, v4, 0x1

    .end local v4           #pos:I
    .restart local v5       #pos:I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 866
    .end local v5           #pos:I
    .restart local v4       #pos:I
    :cond_e
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v4, v10

    .line 867
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v4

    .end local v4           #pos:I
    .restart local v5       #pos:I
    goto/16 :goto_1

    .line 870
    .end local v7           #str:Ljava/lang/String;
    :cond_f
    iget-object v10, p0, Lorg/apache/harmony/javax/naming/CompoundName;->sepTypeValString:Ljava/lang/String;

    invoke-direct {p0, p1, v5, v10}, Lorg/apache/harmony/javax/naming/CompoundName;->startsWithFromPos(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 871
    if-eq v6, v11, :cond_10

    if-nez v6, :cond_11

    .line 872
    :cond_10
    const/4 v2, 0x1

    .line 873
    iget-object v10, p0, Lorg/apache/harmony/javax/naming/CompoundName;->sepTypeValString:Ljava/lang/String;

    invoke-direct {p0, v0, v10, v9}, Lorg/apache/harmony/javax/naming/CompoundName;->addBuffer(Ljava/lang/StringBuilder;Ljava/lang/String;Z)I

    move-result v10

    add-int v4, v5, v10

    .line 874
    .end local v5           #pos:I
    .restart local v4       #pos:I
    const/4 v6, 0x3

    move v5, v4

    .end local v4           #pos:I
    .restart local v5       #pos:I
    goto/16 :goto_1

    .line 875
    :cond_11
    iget-object v10, p0, Lorg/apache/harmony/javax/naming/CompoundName;->sepAvaString:Ljava/lang/String;

    invoke-direct {p0, p1, v5, v10}, Lorg/apache/harmony/javax/naming/CompoundName;->startsWithFromPos(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 876
    if-eq v6, v11, :cond_12

    if-nez v6, :cond_13

    .line 877
    :cond_12
    const/4 v2, 0x1

    .line 878
    iget-object v10, p0, Lorg/apache/harmony/javax/naming/CompoundName;->sepAvaString:Ljava/lang/String;

    invoke-direct {p0, v0, v10, v9}, Lorg/apache/harmony/javax/naming/CompoundName;->addBuffer(Ljava/lang/StringBuilder;Ljava/lang/String;Z)I

    move-result v10

    add-int v4, v5, v10

    .line 879
    .end local v5           #pos:I
    .restart local v4       #pos:I
    const/4 v6, 0x3

    move v5, v4

    .end local v4           #pos:I
    .restart local v5       #pos:I
    goto/16 :goto_1

    .line 880
    :cond_13
    if-ne v6, v12, :cond_14

    .line 883
    new-instance v8, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v9, "jndi.07"

    invoke-static {v9, p1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 885
    :cond_14
    if-ne v6, v11, :cond_15

    move v6, v8

    .line 886
    :cond_15
    add-int/lit8 v4, v5, 0x1

    .end local v5           #pos:I
    .restart local v4       #pos:I
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v5, v4

    .end local v4           #pos:I
    .restart local v5       #pos:I
    goto/16 :goto_1

    :cond_16
    move v1, v9

    .line 890
    goto/16 :goto_2

    .line 894
    :cond_17
    new-instance v8, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v9, "jndi.08"

    invoke-static {v9, p1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private preProcess(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 2
    .parameter "string"
    .parameter "caseInsensitive"
    .parameter "removeBlanks"

    .prologue
    .line 906
    move-object v0, p1

    .line 907
    .local v0, result:Ljava/lang/String;
    if-eqz p1, :cond_1

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 908
    if-eqz p2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 909
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 911
    :cond_1
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .parameter "ois"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 929
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 930
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Properties;

    invoke-direct {p0, v2}, Lorg/apache/harmony/javax/naming/CompoundName;->init(Ljava/util/Properties;)V

    .line 931
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 932
    .local v1, size:I
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/apache/harmony/javax/naming/CompoundName;->elems:Ljava/util/Vector;

    .line 933
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 936
    return-void

    .line 934
    :cond_0
    iget-object v3, p0, Lorg/apache/harmony/javax/naming/CompoundName;->elems:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 933
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private startsWithFromPos(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 5
    .parameter "src"
    .parameter "pos"
    .parameter "des"

    .prologue
    const/4 v2, 0x0

    .line 974
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 975
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, p2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 983
    :cond_0
    :goto_0
    return v2

    .line 978
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    .line 979
    .local v1, length:I
    const/4 v0, -0x1

    .line 980
    .local v0, i:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v1, :cond_3

    add-int v3, p2, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_2

    .line 983
    :cond_3
    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private validateIndex(IZ)V
    .locals 1
    .parameter "index"
    .parameter "isInclude"

    .prologue
    .line 1030
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/javax/naming/CompoundName;->elems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 1031
    if-nez p2, :cond_1

    iget-object v0, p0, Lorg/apache/harmony/javax/naming/CompoundName;->elems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 1032
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1034
    :cond_1
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .parameter "oos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1045
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1046
    iget-object v3, p0, Lorg/apache/harmony/javax/naming/CompoundName;->mySyntax:Ljava/util/Properties;

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1047
    iget-object v3, p0, Lorg/apache/harmony/javax/naming/CompoundName;->elems:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    .line 1048
    .local v0, elemSize:I
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1049
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 1053
    return-void

    .line 1050
    :cond_0
    iget-object v3, p0, Lorg/apache/harmony/javax/naming/CompoundName;->elems:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1051
    .local v1, element:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1049
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public add(ILjava/lang/String;)Lorg/apache/harmony/javax/naming/Name;
    .locals 2
    .parameter "index"
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation

    .prologue
    .line 378
    if-nez p2, :cond_0

    .line 380
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "jndi.8C"

    invoke-static {v1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_0
    const-string v0, "flat"

    iget-object v1, p0, Lorg/apache/harmony/javax/naming/CompoundName;->direction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/CompoundName;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 384
    new-instance v0, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v1, "jndi.0A"

    invoke-static {v1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/harmony/javax/naming/CompoundName;->validateIndex(IZ)V

    .line 387
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/CompoundName;->elems:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 388
    return-object p0
.end method

.method public add(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;
    .locals 2
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation

    .prologue
    .line 393
    if-nez p1, :cond_0

    .line 395
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "jndi.8C"

    invoke-static {v1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_0
    const-string v0, "flat"

    iget-object v1, p0, Lorg/apache/harmony/javax/naming/CompoundName;->direction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/CompoundName;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 399
    new-instance v0, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v1, "jndi.0A"

    invoke-static {v1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/CompoundName;->elems:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 402
    return-object p0
.end method

.method public addAll(ILorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;
    .locals 5
    .parameter "index"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 407
    if-nez p2, :cond_0

    .line 409
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "jndi.00"

    invoke-static {v3}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 411
    :cond_0
    instance-of v2, p2, Lorg/apache/harmony/javax/naming/CompoundName;

    if-nez v2, :cond_1

    .line 413
    new-instance v2, Lorg/apache/harmony/javax/naming/InvalidNameException;

    .line 414
    const-string v3, "jndi.09"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 413
    invoke-static {v3, v4}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 416
    :cond_1
    const-string v2, "flat"

    iget-object v3, p0, Lorg/apache/harmony/javax/naming/CompoundName;->direction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/CompoundName;->size()I

    move-result v2

    invoke-interface {p2}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v3

    add-int/2addr v2, v3

    if-le v2, v4, :cond_2

    .line 418
    new-instance v2, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v3, "jndi.0A"

    invoke-static {v3}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 420
    :cond_2
    invoke-direct {p0, p1, v4}, Lorg/apache/harmony/javax/naming/CompoundName;->validateIndex(IZ)V

    .line 421
    invoke-interface {p2}, Lorg/apache/harmony/javax/naming/Name;->getAll()Ljava/util/Enumeration;

    move-result-object v0

    .line 422
    .local v0, enumeration:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_3

    .line 425
    return-object p0

    .line 423
    :cond_3
    iget-object v3, p0, Lorg/apache/harmony/javax/naming/CompoundName;->elems:Ljava/util/Vector;

    add-int/lit8 v1, p1, 0x1

    .end local p1
    .local v1, index:I
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, p1, v2}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    move p1, v1

    .end local v1           #index:I
    .restart local p1
    goto :goto_0
.end method

.method public addAll(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation

    .prologue
    .line 430
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/CompoundName;->elems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/harmony/javax/naming/CompoundName;->addAll(ILorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 512
    new-instance v0, Lorg/apache/harmony/javax/naming/CompoundName;

    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/CompoundName;->getAll()Ljava/util/Enumeration;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/javax/naming/CompoundName;->mySyntax:Ljava/util/Properties;

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/javax/naming/CompoundName;-><init>(Ljava/util/Enumeration;Ljava/util/Properties;)V

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 9
    .parameter "o"

    .prologue
    const/4 v6, 0x0

    .line 536
    if-ne p1, p0, :cond_0

    move v0, v6

    .line 561
    .end local p1
    :goto_0
    return v0

    .line 539
    .restart local p1
    :cond_0
    instance-of v5, p1, Lorg/apache/harmony/javax/naming/CompoundName;

    if-nez v5, :cond_1

    .line 540
    new-instance v5, Ljava/lang/ClassCastException;

    invoke-direct {v5}, Ljava/lang/ClassCastException;-><init>()V

    throw v5

    .line 543
    :cond_1
    iget-object v5, p0, Lorg/apache/harmony/javax/naming/CompoundName;->elems:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 544
    .local v3, thisIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    check-cast p1, Lorg/apache/harmony/javax/naming/CompoundName;

    .end local p1
    iget-object v5, p1, Lorg/apache/harmony/javax/naming/CompoundName;->elems:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 547
    .local v1, thatIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 555
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 556
    const/4 v0, 0x1

    goto :goto_0

    .line 548
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-boolean v7, p0, Lorg/apache/harmony/javax/naming/CompoundName;->ignoreCase:Z

    iget-boolean v8, p0, Lorg/apache/harmony/javax/naming/CompoundName;->trimBlanks:Z

    invoke-direct {p0, v5, v7, v8}, Lorg/apache/harmony/javax/naming/CompoundName;->preProcess(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    .line 549
    .local v4, thisString:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-boolean v7, p0, Lorg/apache/harmony/javax/naming/CompoundName;->ignoreCase:Z

    iget-boolean v8, p0, Lorg/apache/harmony/javax/naming/CompoundName;->trimBlanks:Z

    invoke-direct {p0, v5, v7, v8}, Lorg/apache/harmony/javax/naming/CompoundName;->preProcess(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 550
    .local v2, thatString:Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 551
    .local v0, compareResult:I
    if-eqz v0, :cond_2

    goto :goto_0

    .line 558
    .end local v0           #compareResult:I
    .end local v2           #thatString:Ljava/lang/String;
    .end local v4           #thisString:Ljava/lang/String;
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 559
    const/4 v0, -0x1

    goto :goto_0

    :cond_6
    move v0, v6

    .line 561
    goto :goto_0
.end method

.method public endsWith(Lorg/apache/harmony/javax/naming/Name;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 566
    instance-of v0, p1, Lorg/apache/harmony/javax/naming/CompoundName;

    if-nez v0, :cond_0

    .line 567
    const/4 v0, 0x0

    .line 569
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/CompoundName;->size()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/harmony/javax/naming/CompoundName;->equals(Lorg/apache/harmony/javax/naming/Name;II)Z

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v2, 0x0

    .line 626
    instance-of v3, p1, Lorg/apache/harmony/javax/naming/CompoundName;

    if-nez v3, :cond_1

    .line 637
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    .line 630
    check-cast v0, Lorg/apache/harmony/javax/naming/CompoundName;

    .line 631
    .local v0, otherName:Lorg/apache/harmony/javax/naming/CompoundName;
    invoke-virtual {v0}, Lorg/apache/harmony/javax/naming/CompoundName;->size()I

    move-result v1

    .line 632
    .local v1, otherSize:I
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/CompoundName;->size()I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 637
    invoke-direct {p0, v0, v2, v1}, Lorg/apache/harmony/javax/naming/CompoundName;->equals(Lorg/apache/harmony/javax/naming/Name;II)Z

    move-result v2

    goto :goto_0
.end method

.method public get(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 674
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/harmony/javax/naming/CompoundName;->validateIndex(IZ)V

    .line 675
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/CompoundName;->elems:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAll()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 680
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/CompoundName;->elems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix(I)Lorg/apache/harmony/javax/naming/Name;
    .locals 4
    .parameter "index"

    .prologue
    .line 685
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/harmony/javax/naming/CompoundName;->validateIndex(IZ)V

    .line 686
    new-instance v0, Lorg/apache/harmony/javax/naming/CompoundName;

    .line 687
    new-instance v1, Ljava/util/Vector;

    iget-object v2, p0, Lorg/apache/harmony/javax/naming/CompoundName;->elems:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Ljava/util/Vector;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 688
    iget-object v2, p0, Lorg/apache/harmony/javax/naming/CompoundName;->mySyntax:Ljava/util/Properties;

    .line 686
    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/javax/naming/CompoundName;-><init>(Ljava/util/Enumeration;Ljava/util/Properties;)V

    return-object v0
.end method

.method public getSuffix(I)Lorg/apache/harmony/javax/naming/Name;
    .locals 4
    .parameter "index"

    .prologue
    .line 693
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/CompoundName;->elems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 694
    new-instance v0, Lorg/apache/harmony/javax/naming/CompoundName;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/javax/naming/CompoundName;->mySyntax:Ljava/util/Properties;

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/javax/naming/CompoundName;-><init>(Ljava/util/Enumeration;Ljava/util/Properties;)V

    .line 697
    :goto_0
    return-object v0

    .line 696
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/harmony/javax/naming/CompoundName;->validateIndex(IZ)V

    .line 697
    new-instance v0, Lorg/apache/harmony/javax/naming/CompoundName;

    new-instance v1, Ljava/util/Vector;

    iget-object v2, p0, Lorg/apache/harmony/javax/naming/CompoundName;->elems:Ljava/util/Vector;

    .line 698
    iget-object v3, p0, Lorg/apache/harmony/javax/naming/CompoundName;->elems:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    .line 697
    invoke-virtual {v2, p1, v3}, Ljava/util/Vector;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    .line 698
    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/javax/naming/CompoundName;->mySyntax:Ljava/util/Properties;

    .line 697
    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/javax/naming/CompoundName;-><init>(Ljava/util/Enumeration;Ljava/util/Properties;)V

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 717
    const/4 v1, 0x0

    .line 718
    .local v1, hashCode:I
    iget-object v2, p0, Lorg/apache/harmony/javax/naming/CompoundName;->elems:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 719
    .local v0, enumeration:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_0

    .line 723
    return v1

    .line 720
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-boolean v3, p0, Lorg/apache/harmony/javax/naming/CompoundName;->ignoreCase:Z

    .line 721
    iget-boolean v4, p0, Lorg/apache/harmony/javax/naming/CompoundName;->trimBlanks:Z

    .line 720
    invoke-direct {p0, v2, v3, v4}, Lorg/apache/harmony/javax/naming/CompoundName;->preProcess(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 721
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/CompoundName;->elems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation

    .prologue
    .line 953
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/harmony/javax/naming/CompoundName;->validateIndex(IZ)V

    .line 954
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/CompoundName;->elems:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/CompoundName;->elems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public startsWith(Lorg/apache/harmony/javax/naming/Name;)Z
    .locals 2
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 964
    instance-of v1, p1, Lorg/apache/harmony/javax/naming/CompoundName;

    if-nez v1, :cond_0

    .line 967
    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/harmony/javax/naming/CompoundName;->equals(Lorg/apache/harmony/javax/naming/Name;II)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1000
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1001
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v0, ""

    iget-object v7, p0, Lorg/apache/harmony/javax/naming/CompoundName;->beginQuoteString:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v4, p0, Lorg/apache/harmony/javax/naming/CompoundName;->beginQuoteString2:Ljava/lang/String;

    .line 1003
    .local v4, begin:Ljava/lang/String;
    :goto_0
    const-string v0, ""

    iget-object v7, p0, Lorg/apache/harmony/javax/naming/CompoundName;->endQuoteString:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v5, p0, Lorg/apache/harmony/javax/naming/CompoundName;->endQuoteString2:Ljava/lang/String;

    .line 1005
    .local v5, end:Ljava/lang/String;
    :goto_1
    const-string v0, ""

    iget-object v7, p0, Lorg/apache/harmony/javax/naming/CompoundName;->separatorString:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v3, p0, Lorg/apache/harmony/javax/naming/CompoundName;->separatorString2:Ljava/lang/String;

    .line 1007
    .local v3, separator:Ljava/lang/String;
    :goto_2
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/CompoundName;->elems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v6

    .line 1008
    .local v6, elemSize:I
    const-string v0, "right_to_left"

    iget-object v7, p0, Lorg/apache/harmony/javax/naming/CompoundName;->direction:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1009
    add-int/lit8 v2, v6, -0x1

    .local v2, i:I
    :goto_3
    if-gez v2, :cond_5

    .line 1017
    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/CompoundName;->size()I

    move-result v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/2addr v0, v7

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-ge v0, v7, :cond_1

    .line 1020
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v0, v7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1022
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1002
    .end local v2           #i:I
    .end local v3           #separator:Ljava/lang/String;
    .end local v4           #begin:Ljava/lang/String;
    .end local v5           #end:Ljava/lang/String;
    .end local v6           #elemSize:I
    :cond_2
    iget-object v4, p0, Lorg/apache/harmony/javax/naming/CompoundName;->beginQuoteString:Ljava/lang/String;

    goto :goto_0

    .line 1004
    .restart local v4       #begin:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lorg/apache/harmony/javax/naming/CompoundName;->endQuoteString:Ljava/lang/String;

    goto :goto_1

    .line 1006
    .restart local v5       #end:Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lorg/apache/harmony/javax/naming/CompoundName;->separatorString:Ljava/lang/String;

    goto :goto_2

    .restart local v2       #i:I
    .restart local v3       #separator:Ljava/lang/String;
    .restart local v6       #elemSize:I
    :cond_5
    move-object v0, p0

    .line 1010
    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/javax/naming/CompoundName;->addElement(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 1013
    .end local v2           #i:I
    :cond_6
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    if-ge v2, v6, :cond_0

    move-object v0, p0

    .line 1014
    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/javax/naming/CompoundName;->addElement(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method
