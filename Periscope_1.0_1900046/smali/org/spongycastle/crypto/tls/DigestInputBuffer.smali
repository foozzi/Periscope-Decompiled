.class Lorg/spongycastle/crypto/tls/DigestInputBuffer;
.super Ljava/io/ByteArrayOutputStream;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method ˎ(Lorg/spongycastle/crypto/Digest;)V
    .locals 3

    .line 11
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DigestInputBuffer;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/tls/DigestInputBuffer;->count:I

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 12
    return-void
.end method
