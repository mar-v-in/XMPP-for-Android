.class public Lorg/jivesoftware/smackx/jingle/SmackLogger;
.super Ljava/lang/Object;
.source "SmackLogger.java"


# instance fields
.field private commonsLogger:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, classToLog:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->setupSmackLogger(Ljava/lang/Class;)V

    .line 67
    return-void
.end method

.method public static getLogger(Ljava/lang/Class;)Lorg/jivesoftware/smackx/jingle/SmackLogger;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/jivesoftware/smackx/jingle/SmackLogger;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, classToLog:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Lorg/jivesoftware/smackx/jingle/SmackLogger;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/jingle/SmackLogger;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method private setupSmackLogger(Ljava/lang/Class;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, classToLog:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    const-class v2, Lorg/jivesoftware/smackx/jingle/SmackLogger;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 166
    const-string v3, "org.apache.commons.logging.LogFactory"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 167
    .local v0, logFactoryClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v2, "getLog"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    .line 168
    const-class v5, Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 167
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 171
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/logging/Log;

    iput-object v2, p0, Lorg/jivesoftware/smackx/jingle/SmackLogger;->commonsLogger:Lorg/apache/commons/logging/Log;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v0           #logFactoryClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v2

    goto :goto_0

    .line 179
    :catch_1
    move-exception v2

    goto :goto_0

    .line 178
    :catch_2
    move-exception v2

    goto :goto_0

    .line 177
    :catch_3
    move-exception v2

    goto :goto_0

    .line 176
    :catch_4
    move-exception v2

    goto :goto_0

    .line 175
    :catch_5
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 1
    .parameter "inDebugMsg"

    .prologue
    .line 76
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/SmackLogger;->commonsLogger:Lorg/apache/commons/logging/Log;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/SmackLogger;->commonsLogger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .parameter "inDebugMsg"
    .parameter "inException"

    .prologue
    .line 90
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/SmackLogger;->commonsLogger:Lorg/apache/commons/logging/Log;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/SmackLogger;->commonsLogger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 96
    :goto_0
    return-void

    .line 93
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method public error(Ljava/lang/String;)V
    .locals 1
    .parameter "inErrorMsg"

    .prologue
    .line 105
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/SmackLogger;->commonsLogger:Lorg/apache/commons/logging/Log;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/SmackLogger;->commonsLogger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public error(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .parameter "inErrorMsg"
    .parameter "inException"

    .prologue
    .line 119
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/SmackLogger;->commonsLogger:Lorg/apache/commons/logging/Log;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/SmackLogger;->commonsLogger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 125
    :goto_0
    return-void

    .line 122
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 123
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p2, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method public info(Ljava/lang/String;)V
    .locals 1
    .parameter "inDebugMsg"

    .prologue
    .line 134
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/SmackLogger;->commonsLogger:Lorg/apache/commons/logging/Log;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/SmackLogger;->commonsLogger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public info(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .parameter "inDebugMsg"
    .parameter "inException"

    .prologue
    .line 148
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/SmackLogger;->commonsLogger:Lorg/apache/commons/logging/Log;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/SmackLogger;->commonsLogger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 154
    :goto_0
    return-void

    .line 151
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 152
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method public warn(Ljava/lang/String;)V
    .locals 1
    .parameter "inDebugMsg"

    .prologue
    .line 191
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/SmackLogger;->commonsLogger:Lorg/apache/commons/logging/Log;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/SmackLogger;->commonsLogger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 196
    :goto_0
    return-void

    .line 194
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .parameter "inDebugMsg"
    .parameter "inException"

    .prologue
    .line 205
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/SmackLogger;->commonsLogger:Lorg/apache/commons/logging/Log;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/SmackLogger;->commonsLogger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 211
    :goto_0
    return-void

    .line 208
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 209
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method
