.class final Lo/ᓿ;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static ˊ(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    .locals 0

    .line 25
    if-eqz p1, :cond_0

    .line 26
    invoke-static {p0, p1}, Lo/ᓿ;->ˋ(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 28
    :cond_0
    return-void
.end method

.method private static ˊ(Ljava/lang/Throwable;Ljava/io/Writer;)V
    .locals 10

    .line 60
    const/4 v3, 0x1

    .line 62
    :goto_0
    if-eqz p0, :cond_3

    .line 63
    :try_start_0
    invoke-static {p0}, Lo/ᓿ;->ˎ(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    .line 64
    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, ""

    .line 66
    :goto_1
    if-eqz v3, :cond_1

    const-string v5, ""

    goto :goto_2

    :cond_1
    const-string v5, "Caused by: "

    .line 67
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 69
    const/4 v3, 0x0

    .line 71
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tat "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 71
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 75
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 76
    goto/16 :goto_0

    .line 79
    :cond_3
    goto :goto_4

    .line 77
    :catch_0
    move-exception v3

    .line 78
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Could not write stack trace"

    invoke-interface {v0, v1, v2, v3}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    :goto_4
    return-void
.end method

.method private static ˋ(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    .locals 6

    .line 47
    const/4 v3, 0x0

    .line 49
    :try_start_0
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v0

    .line 50
    invoke-static {p0, v3}, Lo/ᓿ;->ˊ(Ljava/lang/Throwable;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    const-string v0, "Failed to close stack trace writer."

    invoke-static {v3, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 55
    goto :goto_0

    .line 51
    :catch_0
    move-exception v4

    .line 52
    :try_start_1
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Failed to create PrintWriter"

    invoke-interface {v0, v1, v2, v4}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    const-string v0, "Failed to close stack trace writer."

    invoke-static {v3, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 55
    goto :goto_0

    .line 54
    :catchall_0
    move-exception v5

    const-string v0, "Failed to close stack trace writer."

    invoke-static {v3, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v5

    .line 56
    :goto_0
    return-void
.end method

.method private static ˎ(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    .line 88
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    .line 89
    if-nez v2, :cond_0

    .line 90
    const/4 v0, 0x0

    return-object v0

    .line 93
    :cond_0
    const-string v0, "(\r\n|\n|\u000c)"

    const-string v1, " "

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
