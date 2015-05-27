.class public Lorg/spongycastle/util/encoders/Hex;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final bkd:Lorg/spongycastle/util/encoders/Encoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lorg/spongycastle/util/encoders/HexEncoder;

    invoke-direct {v0}, Lorg/spongycastle/util/encoders/HexEncoder;-><init>()V

    sput-object v0, Lorg/spongycastle/util/encoders/Hex;->bkd:Lorg/spongycastle/util/encoders/Encoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ײ([B)[B
    .locals 2

    .line 39
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/spongycastle/util/encoders/Hex;->ᑊ([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static ᑊ([BII)[B
    .locals 5

    .line 52
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 56
    :try_start_0
    sget-object v0, Lorg/spongycastle/util/encoders/Hex;->bkd:Lorg/spongycastle/util/encoders/Encoder;

    invoke-interface {v0, p0, p1, p2, v3}, Lorg/spongycastle/util/encoders/Encoder;->ˊ([BIILjava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_0

    .line 58
    :catch_0
    move-exception v4

    .line 60
    new-instance v0, Lorg/spongycastle/util/encoders/EncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception encoding Hex string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lorg/spongycastle/util/encoders/EncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 63
    :goto_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static ᵥ(Ljava/lang/String;)[B
    .locals 5

    .line 124
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 128
    :try_start_0
    sget-object v0, Lorg/spongycastle/util/encoders/Hex;->bkd:Lorg/spongycastle/util/encoders/Encoder;

    invoke-interface {v0, p0, v3}, Lorg/spongycastle/util/encoders/Encoder;->ˊ(Ljava/lang/String;Ljava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    goto :goto_0

    .line 130
    :catch_0
    move-exception v4

    .line 132
    new-instance v0, Lorg/spongycastle/util/encoders/DecoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception decoding Hex string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lorg/spongycastle/util/encoders/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 135
    :goto_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
