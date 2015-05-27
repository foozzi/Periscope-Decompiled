.class public Lorg/spongycastle/jcajce/io/CipherOutputStream;
.super Ljava/io/FilterOutputStream;
.source ""


# instance fields
.field private final aGY:[B

.field private final aWk:Ljavax/crypto/Cipher;


# virtual methods
.method public close()V
    .locals 4

    .line 111
    const/4 v2, 0x0

    .line 114
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/io/CipherOutputStream;->aWk:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v3

    .line 115
    if-eqz v3, :cond_0

    .line 117
    iget-object v0, p0, Lorg/spongycastle/jcajce/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 127
    :cond_0
    goto :goto_0

    .line 120
    :catch_0
    move-exception v3

    .line 122
    new-instance v2, Lorg/spongycastle/crypto/io/InvalidCipherTextIOException;

    const-string v0, "Error during cipher finalisation"

    invoke-direct {v2, v0, v3}, Lorg/spongycastle/crypto/io/InvalidCipherTextIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    goto :goto_0

    .line 124
    :catch_1
    move-exception v3

    .line 126
    new-instance v2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error closing stream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 130
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/io/CipherOutputStream;->flush()V

    .line 131
    iget-object v0, p0, Lorg/spongycastle/jcajce/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 140
    goto :goto_1

    .line 133
    :catch_2
    move-exception v3

    .line 136
    if-nez v2, :cond_1

    .line 138
    move-object v2, v3

    .line 141
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 143
    throw v2

    .line 145
    :cond_2
    return-void
.end method

.method public flush()V
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/spongycastle/jcajce/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 91
    return-void
.end method

.method public write(I)V
    .locals 3

    .line 52
    iget-object v0, p0, Lorg/spongycastle/jcajce/io/CipherOutputStream;->aGY:[B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 53
    iget-object v0, p0, Lorg/spongycastle/jcajce/io/CipherOutputStream;->aGY:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/spongycastle/jcajce/io/CipherOutputStream;->write([BII)V

    .line 54
    return-void
.end method

.method public write([BII)V
    .locals 2

    .line 68
    iget-object v0, p0, Lorg/spongycastle/jcajce/io/CipherOutputStream;->aWk:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v1

    .line 69
    if-eqz v1, :cond_0

    .line 71
    iget-object v0, p0, Lorg/spongycastle/jcajce/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 73
    :cond_0
    return-void
.end method
