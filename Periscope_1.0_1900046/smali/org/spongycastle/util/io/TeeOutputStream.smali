.class public Lorg/spongycastle/util/io/TeeOutputStream;
.super Ljava/io/OutputStream;
.source ""


# instance fields
.field private bkj:Ljava/io/OutputStream;

.field private bkk:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/spongycastle/util/io/TeeOutputStream;->bkj:Ljava/io/OutputStream;

    .line 25
    iput-object p2, p0, Lorg/spongycastle/util/io/TeeOutputStream;->bkk:Ljava/io/OutputStream;

    .line 26
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/spongycastle/util/io/TeeOutputStream;->bkj:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 60
    iget-object v0, p0, Lorg/spongycastle/util/io/TeeOutputStream;->bkk:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 61
    return-void
.end method

.method public flush()V
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/spongycastle/util/io/TeeOutputStream;->bkj:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 53
    iget-object v0, p0, Lorg/spongycastle/util/io/TeeOutputStream;->bkk:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 54
    return-void
.end method

.method public write(I)V
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/spongycastle/util/io/TeeOutputStream;->bkj:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 46
    iget-object v0, p0, Lorg/spongycastle/util/io/TeeOutputStream;->bkk:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 47
    return-void
.end method

.method public write([B)V
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/spongycastle/util/io/TeeOutputStream;->bkj:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 32
    iget-object v0, p0, Lorg/spongycastle/util/io/TeeOutputStream;->bkk:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 33
    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/spongycastle/util/io/TeeOutputStream;->bkj:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 39
    iget-object v0, p0, Lorg/spongycastle/util/io/TeeOutputStream;->bkk:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 40
    return-void
.end method
