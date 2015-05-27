.class public Lorg/spongycastle/util/io/TeeInputStream;
.super Ljava/io/InputStream;
.source ""


# instance fields
.field private final aTY:Ljava/io/InputStream;

.field private final nx:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/spongycastle/util/io/TeeInputStream;->aTY:Ljava/io/InputStream;

    .line 25
    iput-object p2, p0, Lorg/spongycastle/util/io/TeeInputStream;->nx:Ljava/io/OutputStream;

    .line 26
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/spongycastle/util/io/TeeInputStream;->aTY:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 64
    iget-object v0, p0, Lorg/spongycastle/util/io/TeeInputStream;->nx:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 65
    return-void
.end method

.method public read()I
    .locals 2

    .line 50
    iget-object v0, p0, Lorg/spongycastle/util/io/TeeInputStream;->aTY:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 52
    if-ltz v1, :cond_0

    .line 54
    iget-object v0, p0, Lorg/spongycastle/util/io/TeeInputStream;->nx:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 57
    :cond_0
    return v1
.end method

.method public read([B)I
    .locals 2

    .line 31
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/spongycastle/util/io/TeeInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 2

    .line 37
    iget-object v0, p0, Lorg/spongycastle/util/io/TeeInputStream;->aTY:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 39
    if-lez v1, :cond_0

    .line 41
    iget-object v0, p0, Lorg/spongycastle/util/io/TeeInputStream;->nx:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 44
    :cond_0
    return v1
.end method
