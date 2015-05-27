.class public final Lo/up;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lo/up;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lo/up;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static appendingSink(Ljava/io/File;)Lo/uz;
    .locals 2

    .line 179
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-static {v0}, Lo/up;->ᐝ(Ljava/io/OutputStream;)Lo/uz;

    move-result-object v0

    return-object v0
.end method

.method static synthetic es()Ljava/util/logging/Logger;
    .locals 1

    .line 36
    sget-object v0, Lo/up;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static sink(Ljava/io/File;)Lo/uz;
    .locals 2

    .line 173
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lo/up;->ᐝ(Ljava/io/OutputStream;)Lo/uz;

    move-result-object v0

    return-object v0
.end method

.method public static source(Ljava/io/File;)Lo/va;
    .locals 2

    .line 160
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lo/up;->ι(Ljava/io/InputStream;)Lo/va;

    move-result-object v0

    return-object v0
.end method

.method public static ˊ(Lo/uz;)Lo/uh;
    .locals 2

    .line 58
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    new-instance v0, Lo/ut;

    invoke-direct {v0, p0}, Lo/ut;-><init>(Lo/uz;)V

    return-object v0
.end method

.method private static ˊ(Ljava/io/OutputStream;Lo/vb;)Lo/uz;
    .locals 2

    .line 68
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    new-instance v0, Lo/uq;

    invoke-direct {v0, p1, p0}, Lo/uq;-><init>(Lo/vb;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static ˊ(Ljava/net/Socket;)Lo/uz;
    .locals 4

    .line 115
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "socket == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    invoke-static {p0}, Lo/up;->ˎ(Ljava/net/Socket;)Lo/ua;

    move-result-object v2

    .line 117
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v0, v2}, Lo/up;->ˊ(Ljava/io/OutputStream;Lo/vb;)Lo/uz;

    move-result-object v3

    .line 118
    invoke-virtual {v2, v3}, Lo/ua;->sink(Lo/uz;)Lo/uz;

    move-result-object v0

    return-object v0
.end method

.method private static ˊ(Ljava/io/InputStream;Lo/vb;)Lo/va;
    .locals 2

    .line 127
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_1
    new-instance v0, Lo/ur;

    invoke-direct {v0, p1, p0}, Lo/ur;-><init>(Lo/vb;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static ˋ(Lo/va;)Lo/ui;
    .locals 2

    .line 48
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    new-instance v0, Lo/uv;

    invoke-direct {v0, p0}, Lo/uv;-><init>(Lo/va;)V

    return-object v0
.end method

.method public static ˋ(Ljava/net/Socket;)Lo/va;
    .locals 4

    .line 196
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "socket == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_0
    invoke-static {p0}, Lo/up;->ˎ(Ljava/net/Socket;)Lo/ua;

    move-result-object v2

    .line 198
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, v2}, Lo/up;->ˊ(Ljava/io/InputStream;Lo/vb;)Lo/va;

    move-result-object v3

    .line 199
    invoke-virtual {v2, v3}, Lo/ua;->source(Lo/va;)Lo/va;

    move-result-object v0

    return-object v0
.end method

.method private static ˎ(Ljava/net/Socket;)Lo/ua;
    .locals 1

    .line 203
    new-instance v0, Lo/us;

    invoke-direct {v0, p0}, Lo/us;-><init>(Ljava/net/Socket;)V

    return-object v0
.end method

.method public static ᐝ(Ljava/io/OutputStream;)Lo/uz;
    .locals 1

    .line 64
    new-instance v0, Lo/vb;

    invoke-direct {v0}, Lo/vb;-><init>()V

    invoke-static {p0, v0}, Lo/up;->ˊ(Ljava/io/OutputStream;Lo/vb;)Lo/uz;

    move-result-object v0

    return-object v0
.end method

.method public static ι(Ljava/io/InputStream;)Lo/va;
    .locals 1

    .line 123
    new-instance v0, Lo/vb;

    invoke-direct {v0}, Lo/vb;-><init>()V

    invoke-static {p0, v0}, Lo/up;->ˊ(Ljava/io/InputStream;Lo/vb;)Lo/va;

    move-result-object v0

    return-object v0
.end method
