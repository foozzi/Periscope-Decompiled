.class public final Lo/gb;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Ljava/io/Reader;)Lo/fw;
    .locals 4

    .line 58
    :try_start_0
    new-instance v2, Lo/jz;

    invoke-direct {v2, p1}, Lo/jz;-><init>(Ljava/io/Reader;)V

    .line 59
    invoke-virtual {p0, v2}, Lo/gb;->ᐝ(Lo/jz;)Lo/fw;

    move-result-object v3

    .line 60
    invoke-virtual {v3}, Lo/fw;->q()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Lo/jz;->J()Lo/kb;

    move-result-object v0

    sget-object v1, Lo/kb;->NC:Lo/kb;

    if-eq v0, v1, :cond_0

    .line 61
    new-instance v0, Lo/gf;

    const-string v1, "Did not consume the entire document."

    invoke-direct {v0, v1}, Lo/gf;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lo/kd; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 63
    :cond_0
    return-object v3

    .line 64
    :catch_0
    move-exception v2

    .line 65
    new-instance v0, Lo/gf;

    invoke-direct {v0, v2}, Lo/gf;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 66
    :catch_1
    move-exception v2

    .line 67
    new-instance v0, Lo/fx;

    invoke-direct {v0, v2}, Lo/fx;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 68
    :catch_2
    move-exception v2

    .line 69
    new-instance v0, Lo/gf;

    invoke-direct {v0, v2}, Lo/gf;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public ᐝ(Lo/jz;)Lo/fw;
    .locals 6

    .line 81
    invoke-virtual {p1}, Lo/jz;->isLenient()Z

    move-result v3

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/jz;->setLenient(Z)V

    .line 84
    :try_start_0
    invoke-static {p1}, Lo/hq;->ᐝ(Lo/jz;)Lo/fw;
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 90
    invoke-virtual {p1, v3}, Lo/jz;->setLenient(Z)V

    return-object v4

    .line 85
    :catch_0
    move-exception v4

    .line 86
    :try_start_1
    new-instance v0, Lo/ga;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed parsing JSON source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to Json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lo/ga;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 87
    :catch_1
    move-exception v4

    .line 88
    new-instance v0, Lo/ga;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed parsing JSON source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to Json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lo/ga;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    :catchall_0
    move-exception v5

    invoke-virtual {p1, v3}, Lo/jz;->setLenient(Z)V

    throw v5
.end method

.method public ᐤ(Ljava/lang/String;)Lo/fw;
    .locals 1

    .line 45
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lo/gb;->ˊ(Ljava/io/Reader;)Lo/fw;

    move-result-object v0

    return-object v0
.end method
