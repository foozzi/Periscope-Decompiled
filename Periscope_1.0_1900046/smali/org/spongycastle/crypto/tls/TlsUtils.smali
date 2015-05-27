.class public Lorg/spongycastle/crypto/tls/TlsUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final aWa:Ljava/lang/Integer;

.field static final aWb:[B

.field static final aWc:[B

.field static final aWd:[[B

.field public static final abo:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->abo:[B

    .line 48
    const/16 v0, 0xd

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->aWa:Ljava/lang/Integer;

    .line 1282
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->aWb:[B

    .line 1283
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->aWc:[B

    .line 1286
    invoke-static {}, Lorg/spongycastle/crypto/tls/TlsUtils;->nx()[[B

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->aWd:[[B

    return-void

    :array_0
    .array-data 1
        0x43t
        0x4ct
        0x4et
        0x54t
    .end array-data

    :array_1
    .array-data 1
        0x53t
        0x52t
        0x56t
        0x52t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static nu()Ljava/util/Vector;
    .locals 3

    .line 698
    new-instance v0, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;-><init>(SS)V

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ﺛ(Ljava/lang/Object;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public static nv()Ljava/util/Vector;
    .locals 3

    .line 703
    new-instance v0, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;-><init>(SS)V

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ﺛ(Ljava/lang/Object;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public static nw()Ljava/util/Vector;
    .locals 3

    .line 708
    new-instance v0, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;-><init>(SS)V

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ﺛ(Ljava/lang/Object;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method private static nx()[[B
    .locals 5

    .line 1290
    const/16 v1, 0xa

    .line 1291
    new-array v2, v1, [[B

    .line 1292
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 1294
    add-int/lit8 v0, v3, 0x1

    new-array v4, v0, [B

    .line 1295
    add-int/lit8 v0, v3, 0x41

    int-to-byte v0, v0

    invoke-static {v4, v0}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 1296
    aput-object v4, v2, v3

    .line 1292
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1298
    :cond_0
    return-object v2
.end method

.method public static ʴ([BI)S
    .locals 1

    .line 439
    aget-byte v0, p0, p1

    int-to-short v0, v0

    return v0
.end method

.method public static ʹ(Ljava/io/InputStream;)I
    .locals 3

    .line 445
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 446
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 447
    if-gez v2, :cond_0

    .line 449
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 451
    :cond_0
    shl-int/lit8 v0, v1, 0x8

    or-int/2addr v0, v2

    return v0
.end method

.method public static ʻ(ILjava/io/OutputStream;)V
    .locals 1

    .line 220
    ushr-int/lit8 v0, p0, 0x8

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 221
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    .line 222
    return-void
.end method

.method public static ʻ(ILjava/io/InputStream;)[S
    .locals 3

    .line 589
    new-array v1, p0, [S

    .line 590
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    .line 592
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ﾞ(Ljava/io/InputStream;)S

    move-result v0

    aput-short v0, v1, v2

    .line 590
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 594
    :cond_0
    return-object v1
.end method

.method public static ʼ(ILjava/io/OutputStream;)V
    .locals 1

    .line 233
    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 234
    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 235
    int-to-byte v0, p0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 236
    return-void
.end method

.method static ʼ([B[BI)[B
    .locals 10

    .line 984
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ͺ(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v2

    .line 985
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ͺ(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v3

    .line 986
    invoke-interface {v2}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v4

    .line 987
    invoke-interface {v3}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v5, v0, [B

    .line 988
    add-int v0, p2, v4

    new-array v6, v0, [B

    .line 990
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 991
    :goto_0
    if-ge v8, p2, :cond_0

    .line 993
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->aWd:[[B

    aget-object v9, v0, v7

    .line 995
    array-length v0, v9

    const/4 v1, 0x0

    invoke-interface {v3, v9, v1, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 996
    array-length v0, p0

    const/4 v1, 0x0

    invoke-interface {v3, p0, v1, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 997
    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {v3, p1, v1, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 998
    const/4 v0, 0x0

    invoke-interface {v3, v5, v0}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 1000
    array-length v0, p0

    const/4 v1, 0x0

    invoke-interface {v2, p0, v1, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 1001
    array-length v0, v5

    const/4 v1, 0x0

    invoke-interface {v2, v5, v1, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 1002
    invoke-interface {v2, v6, v8}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 1004
    add-int/2addr v8, v4

    .line 1005
    add-int/lit8 v7, v7, 0x1

    .line 1006
    goto :goto_0

    .line 1008
    :cond_0
    new-array v9, p2, [B

    .line 1009
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v6, v0, v9, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1010
    return-object v9
.end method

.method public static ʼ(ILjava/io/InputStream;)[I
    .locals 3

    .line 600
    new-array v1, p0, [I

    .line 601
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    .line 603
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ʹ(Ljava/io/InputStream;)I

    move-result v0

    aput v0, v1, v2

    .line 601
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 605
    :cond_0
    return-object v1
.end method

.method public static ʽ(I[BI)V
    .locals 2

    .line 226
    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 227
    add-int/lit8 v0, p2, 0x1

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    .line 228
    return-void
.end method

.method public static ʽ(S)Z
    .locals 1

    .line 132
    and-int/lit16 v0, p0, 0xff

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static ʾ(S)Z
    .locals 1

    .line 1256
    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    .line 1261
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 1263
    :goto_0
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method public static ʿ(S)Lorg/spongycastle/crypto/tls/TlsSigner;
    .locals 2

    .line 1269
    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    .line 1272
    :sswitch_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsDSSSigner;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/TlsDSSSigner;-><init>()V

    return-object v0

    .line 1274
    :sswitch_1
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsECDSASigner;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/TlsECDSASigner;-><init>()V

    return-object v0

    .line 1276
    :sswitch_2
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsRSASigner;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/TlsRSASigner;-><init>()V

    return-object v0

    .line 1278
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'clientCertificateType\' is not a type with signing capability"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x40 -> :sswitch_1
    .end sparse-switch
.end method

.method public static ˆ([BI)I
    .locals 3

    .line 456
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v2, v0, 0x8

    .line 457
    add-int/lit8 p1, p1, 0x1

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v2, v0

    .line 458
    return v2
.end method

.method public static ˇ([BI)Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 3

    .line 611
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->ᔊ(II)Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public static ˊ(ZLjava/io/InputStream;)Ljava/util/Vector;
    .locals 7

    .line 845
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ʹ(Ljava/io/InputStream;)I

    move-result v2

    .line 846
    const/4 v0, 0x2

    if-lt v2, v0, :cond_0

    and-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_1

    .line 848
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 850
    :cond_1
    div-int/lit8 v3, v2, 0x2

    .line 851
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4, v3}, Ljava/util/Vector;-><init>(I)V

    .line 852
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_3

    .line 854
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->ᐧ(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v6

    .line 855
    if-nez p0, :cond_2

    invoke-virtual {v6}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->mL()S

    move-result v0

    if-nez v0, :cond_2

    .line 861
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 863
    :cond_2
    invoke-virtual {v4, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 852
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 865
    :cond_3
    return-object v4
.end method

.method public static ˊ(SLorg/spongycastle/crypto/Digest;)Lorg/spongycastle/crypto/Digest;
    .locals 2

    .line 1092
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 1095
    :pswitch_0
    new-instance v0, Lorg/spongycastle/crypto/digests/MD5Digest;

    move-object v1, p1

    check-cast v1, Lorg/spongycastle/crypto/digests/MD5Digest;

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/digests/MD5Digest;-><init>(Lorg/spongycastle/crypto/digests/MD5Digest;)V

    return-object v0

    .line 1097
    :pswitch_1
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    move-object v1, p1

    check-cast v1, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>(Lorg/spongycastle/crypto/digests/SHA1Digest;)V

    return-object v0

    .line 1099
    :pswitch_2
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA224Digest;

    move-object v1, p1

    check-cast v1, Lorg/spongycastle/crypto/digests/SHA224Digest;

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/digests/SHA224Digest;-><init>(Lorg/spongycastle/crypto/digests/SHA224Digest;)V

    return-object v0

    .line 1101
    :pswitch_3
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA256Digest;

    move-object v1, p1

    check-cast v1, Lorg/spongycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>(Lorg/spongycastle/crypto/digests/SHA256Digest;)V

    return-object v0

    .line 1103
    :pswitch_4
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA384Digest;

    move-object v1, p1

    check-cast v1, Lorg/spongycastle/crypto/digests/SHA384Digest;

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/digests/SHA384Digest;-><init>(Lorg/spongycastle/crypto/digests/SHA384Digest;)V

    return-object v0

    .line 1105
    :pswitch_5
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA512Digest;

    move-object v1, p1

    check-cast v1, Lorg/spongycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/digests/SHA512Digest;-><init>(Lorg/spongycastle/crypto/digests/SHA512Digest;)V

    return-object v0

    .line 1107
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown HashAlgorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static ˊ(Lorg/spongycastle/crypto/tls/Certificate;Lorg/spongycastle/crypto/tls/Certificate;)S
    .locals 5

    .line 1172
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1174
    const/4 v0, -0x1

    return v0

    .line 1177
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/Certificate;->ץ(I)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v2

    .line 1178
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/Certificate;->hj()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v3

    .line 1181
    :try_start_0
    invoke-static {v3}, Lorg/spongycastle/crypto/util/PublicKeyFactory;->ˊ(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v4

    .line 1182
    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1184
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 1202
    :cond_1
    instance-of v0, v4, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    if-eqz v0, :cond_2

    .line 1204
    const/16 v0, 0x80

    invoke-static {v2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(Lorg/spongycastle/asn1/x509/Certificate;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1205
    const/4 v0, 0x1

    return v0

    .line 1212
    :cond_2
    instance-of v0, v4, Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;

    if-eqz v0, :cond_3

    .line 1214
    const/16 v0, 0x80

    :try_start_1
    invoke-static {v2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(Lorg/spongycastle/asn1/x509/Certificate;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1215
    const/4 v0, 0x2

    return v0

    .line 1223
    :cond_3
    instance-of v0, v4, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    if-eqz v0, :cond_4

    .line 1225
    const/16 v0, 0x80

    :try_start_2
    invoke-static {v2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(Lorg/spongycastle/asn1/x509/Certificate;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1227
    const/16 v0, 0x40

    return v0

    .line 1235
    :cond_4
    goto :goto_0

    .line 1233
    :catch_0
    move-exception v4

    .line 1237
    :goto_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2b

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public static ˊ(JLjava/io/OutputStream;)V
    .locals 2

    .line 248
    const/16 v0, 0x18

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 249
    const/16 v0, 0x10

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 250
    const/16 v0, 0x8

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 251
    long-to-int v0, p0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 252
    return-void
.end method

.method public static ˊ(Ljava/util/Vector;ZLjava/io/OutputStream;)V
    .locals 5

    .line 814
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    const v1, 0x8000

    if-lt v0, v1, :cond_1

    .line 817
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'supportedSignatureAlgorithms\' must have length from 1 to (2^15 - 1)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 822
    :cond_1
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    mul-int/lit8 v2, v0, 0x2

    .line 823
    invoke-static {v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᴻ(I)V

    .line 824
    invoke-static {v2, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->ʻ(ILjava/io/OutputStream;)V

    .line 825
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 827
    invoke-virtual {p0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-object v4, v0

    .line 828
    if-nez p1, :cond_2

    invoke-virtual {v4}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->mL()S

    move-result v0

    if-nez v0, :cond_2

    .line 834
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SignatureAlgorithm.anonymous MUST NOT appear in the signature_algorithms extension"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 837
    :cond_2
    invoke-virtual {v4, p2}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->encode(Ljava/io/OutputStream;)V

    .line 825
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 839
    :cond_3
    return-void
.end method

.method static ˊ(Lorg/spongycastle/asn1/x509/Certificate;I)V
    .locals 5

    .line 952
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/Certificate;->hd()Lorg/spongycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/TBSCertificate;->gX()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v2

    .line 953
    if-eqz v2, :cond_0

    .line 955
    invoke-static {v2}, Lorg/spongycastle/asn1/x509/KeyUsage;->ˊ(Lorg/spongycastle/asn1/x509/Extensions;)Lorg/spongycastle/asn1/x509/KeyUsage;

    move-result-object v3

    .line 956
    if-eqz v3, :cond_0

    .line 958
    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/KeyUsage;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v4, v0, 0xff

    .line 959
    and-int v0, v4, p1

    if-eq v0, p1, :cond_0

    .line 961
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2e

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 965
    :cond_0
    return-void
.end method

.method static ˊ(Lorg/spongycastle/crypto/Digest;[B[B[B)V
    .locals 10

    .line 930
    new-instance v3, Lorg/spongycastle/crypto/macs/HMac;

    invoke-direct {v3, p0}, Lorg/spongycastle/crypto/macs/HMac;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 931
    new-instance v0, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/crypto/macs/HMac;->ˊ(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 932
    move-object v4, p2

    .line 933
    invoke-interface {p0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v5

    .line 934
    array-length v0, p3

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x1

    div-int v6, v0, v5

    .line 935
    invoke-virtual {v3}, Lorg/spongycastle/crypto/macs/HMac;->iO()I

    move-result v0

    new-array v7, v0, [B

    .line 936
    invoke-virtual {v3}, Lorg/spongycastle/crypto/macs/HMac;->iO()I

    move-result v0

    new-array v8, v0, [B

    .line 937
    const/4 v9, 0x0

    :goto_0
    if-ge v9, v6, :cond_0

    .line 939
    array-length v0, v4

    const/4 v1, 0x0

    invoke-virtual {v3, v4, v1, v0}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 940
    const/4 v0, 0x0

    invoke-virtual {v3, v7, v0}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 941
    move-object v4, v7

    .line 942
    array-length v0, v4

    const/4 v1, 0x0

    invoke-virtual {v3, v4, v1, v0}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 943
    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {v3, p2, v1, v0}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 944
    const/4 v0, 0x0

    invoke-virtual {v3, v8, v0}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 945
    mul-int v0, v5, v9

    array-length v1, p3

    mul-int v2, v5, v9

    sub-int/2addr v1, v2

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v8, v2, p3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 937
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 947
    :cond_0
    return-void
.end method

.method public static ˊ(Lorg/spongycastle/crypto/tls/ProtocolVersion;Ljava/io/OutputStream;)V
    .locals 1

    .line 686
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getMajorVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 687
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getMinorVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 688
    return-void
.end method

.method public static ˊ(Lorg/spongycastle/crypto/tls/ProtocolVersion;[BI)V
    .locals 2

    .line 692
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getMajorVersion()I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 693
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getMinorVersion()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 694
    return-void
.end method

.method static ˊ(Lorg/spongycastle/crypto/tls/TlsHandshakeHash;Ljava/util/Vector;)V
    .locals 4

    .line 1242
    if-eqz p1, :cond_0

    .line 1244
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1246
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-object v2, v0

    .line 1248
    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->mK()S

    move-result v3

    .line 1249
    invoke-interface {p0, v3}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->ˎ(S)V

    .line 1244
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1252
    :cond_0
    return-void
.end method

.method public static ˊ(SLjava/io/OutputStream;)V
    .locals 0

    .line 198
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    .line 199
    return-void
.end method

.method public static ˊ(S[BI)V
    .locals 1

    .line 209
    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 210
    return-void
.end method

.method public static ˊ([SLjava/io/OutputStream;)V
    .locals 2

    .line 335
    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    .line 337
    aget-short v0, p0, v1

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(SLjava/io/OutputStream;)V

    .line 335
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 339
    :cond_0
    return-void
.end method

.method public static ˊ(ILorg/spongycastle/crypto/tls/ProtocolVersion;)Z
    .locals 2

    .line 1778
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->Ⅼ(I)Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->mq()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->ˏ(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    return v0
.end method

.method public static ˊ(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z
    .locals 2

    .line 719
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v1

    .line 720
    if-nez v1, :cond_0

    .line 722
    const/4 v0, 0x0

    return v0

    .line 724
    :cond_0
    array-length v0, v1

    if-eqz v0, :cond_1

    .line 726
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, p2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 728
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static ˊ(Ljava/util/Hashtable;Ljava/lang/Integer;)[B
    .locals 1

    .line 713
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    :goto_0
    return-object v0
.end method

.method static ˊ(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B
    .locals 4

    .line 1057
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˎ(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1059
    return-object p2

    .line 1062
    :cond_0
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->lH()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v1

    .line 1063
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/SecurityParameters;->mE()[B

    move-result-object v2

    .line 1064
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/SecurityParameters;->mD()I

    move-result v3

    .line 1066
    invoke-static {p0, v2, p1, p2, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(Lorg/spongycastle/crypto/tls/TlsContext;[BLjava/lang/String;[BI)[B

    move-result-object v0

    return-object v0
.end method

.method static ˊ(Lorg/spongycastle/crypto/tls/TlsContext;[B)[B
    .locals 4

    .line 1015
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->lH()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v2

    .line 1016
    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/SecurityParameters;->mF()[B

    move-result-object v0

    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/SecurityParameters;->mG()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˍ([B[B)[B

    move-result-object v3

    .line 1018
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˎ(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1020
    invoke-static {p1, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˑ([B[B)[B

    move-result-object v0

    return-object v0

    .line 1023
    :cond_0
    const-string v0, "master secret"

    const/16 v1, 0x30

    invoke-static {p0, p1, v0, v3, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(Lorg/spongycastle/crypto/tls/TlsContext;[BLjava/lang/String;[BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static ˊ(Lorg/spongycastle/crypto/tls/TlsContext;[BLjava/lang/String;[BI)[B
    .locals 8

    .line 870
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->lJ()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v2

    .line 872
    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->mp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 874
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No PRF available for SSLv3 session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 877
    :cond_0
    invoke-static {p2}, Lorg/spongycastle/util/Strings;->Ϊ(Ljava/lang/String;)[B

    move-result-object v3

    .line 878
    invoke-static {v3, p3}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˍ([B[B)[B

    move-result-object v4

    .line 880
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->lH()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/SecurityParameters;->mC()I

    move-result v5

    .line 882
    if-nez v5, :cond_1

    .line 884
    invoke-static {p1, v3, v4, p4}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˋ([B[B[BI)[B

    move-result-object v0

    return-object v0

    .line 887
    :cond_1
    invoke-static {v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->ẛ(I)Lorg/spongycastle/crypto/Digest;

    move-result-object v6

    .line 888
    new-array v7, p4, [B

    .line 889
    invoke-static {v6, p1, v4, v7}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(Lorg/spongycastle/crypto/Digest;[B[B[B)V

    .line 890
    return-object v7
.end method

.method public static ˋ([BLjava/io/OutputStream;)V
    .locals 1

    .line 311
    array-length v0, p0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᴰ(I)V

    .line 312
    array-length v0, p0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᐝ(ILjava/io/OutputStream;)V

    .line 313
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 314
    return-void
.end method

.method public static ˋ([SLjava/io/OutputStream;)V
    .locals 1

    .line 354
    array-length v0, p0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᴰ(I)V

    .line 355
    array-length v0, p0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᐝ(ILjava/io/OutputStream;)V

    .line 356
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ([SLjava/io/OutputStream;)V

    .line 357
    return-void
.end method

.method static ˋ([B[B[BI)[B
    .locals 8

    .line 903
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v2, v0, 0x2

    .line 904
    new-array v3, v2, [B

    .line 905
    new-array v4, v2, [B

    .line 906
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 907
    array-length v0, p0

    sub-int/2addr v0, v2

    const/4 v1, 0x0

    invoke-static {p0, v0, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 909
    new-array v5, p3, [B

    .line 910
    new-array v6, p3, [B

    .line 911
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ͺ(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    invoke-static {v0, v3, p2, v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(Lorg/spongycastle/crypto/Digest;[B[B[B)V

    .line 912
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ͺ(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    invoke-static {v0, v4, p2, v6}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(Lorg/spongycastle/crypto/Digest;[B[B[B)V

    .line 913
    const/4 v7, 0x0

    :goto_0
    if-ge v7, p3, :cond_0

    .line 915
    aget-byte v0, v5, v7

    aget-byte v1, v6, v7

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v5, v7

    .line 913
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 917
    :cond_0
    return-object v5
.end method

.method static ˍ([B[B)[B
    .locals 4

    .line 922
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v3, v0, [B

    .line 923
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 924
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 925
    return-object v3
.end method

.method public static ˎ([BLjava/io/OutputStream;)V
    .locals 1

    .line 319
    array-length v0, p0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᴻ(I)V

    .line 320
    array-length v0, p0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ʻ(ILjava/io/OutputStream;)V

    .line 321
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 322
    return-void
.end method

.method public static ˎ(Lorg/spongycastle/crypto/tls/TlsContext;)Z
    .locals 1

    .line 182
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->lJ()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->mp()Z

    move-result v0

    return v0
.end method

.method public static ˏ([BLjava/io/OutputStream;)V
    .locals 1

    .line 327
    array-length v0, p0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᵠ(I)V

    .line 328
    array-length v0, p0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ʼ(ILjava/io/OutputStream;)V

    .line 329
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 330
    return-void
.end method

.method public static ˏ(Lorg/spongycastle/crypto/tls/TlsContext;)Z
    .locals 2

    .line 187
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->aTS:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->lJ()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->mq()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->ˏ(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    return v0
.end method

.method public static ˏ(ILjava/io/InputStream;)[B
    .locals 3

    .line 523
    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    .line 525
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->abo:[B

    return-object v0

    .line 527
    :cond_0
    new-array v1, p0, [B

    .line 528
    invoke-static {p1, v1}, Lorg/spongycastle/util/io/Streams;->ˎ(Ljava/io/InputStream;[B)I

    move-result v2

    .line 529
    if-nez v2, :cond_1

    .line 531
    const/4 v0, 0x0

    return-object v0

    .line 533
    :cond_1
    if-eq v2, p0, :cond_2

    .line 535
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 537
    :cond_2
    return-object v1
.end method

.method static ˑ([B[B)[B
    .locals 10

    .line 1028
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ͺ(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v2

    .line 1029
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ͺ(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v3

    .line 1030
    invoke-interface {v2}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v4

    .line 1031
    invoke-interface {v3}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v5, v0, [B

    .line 1033
    mul-int/lit8 v0, v4, 0x3

    new-array v6, v0, [B

    .line 1034
    const/4 v7, 0x0

    .line 1036
    const/4 v8, 0x0

    :goto_0
    const/4 v0, 0x3

    if-ge v8, v0, :cond_0

    .line 1038
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->aWd:[[B

    aget-object v9, v0, v8

    .line 1040
    array-length v0, v9

    const/4 v1, 0x0

    invoke-interface {v3, v9, v1, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 1041
    array-length v0, p0

    const/4 v1, 0x0

    invoke-interface {v3, p0, v1, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 1042
    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {v3, p1, v1, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 1043
    const/4 v0, 0x0

    invoke-interface {v3, v5, v0}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 1045
    array-length v0, p0

    const/4 v1, 0x0

    invoke-interface {v2, p0, v1, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 1046
    array-length v0, v5

    const/4 v1, 0x0

    invoke-interface {v2, v5, v1, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 1047
    invoke-interface {v2, v6, v7}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 1049
    add-int/2addr v7, v4

    .line 1036
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1052
    :cond_0
    return-object v6
.end method

.method public static ˡ([BI)I
    .locals 2

    .line 629
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static ͺ(S)Lorg/spongycastle/crypto/Digest;
    .locals 2

    .line 1071
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 1074
    :pswitch_0
    new-instance v0, Lorg/spongycastle/crypto/digests/MD5Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/MD5Digest;-><init>()V

    return-object v0

    .line 1076
    :pswitch_1
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    return-object v0

    .line 1078
    :pswitch_2
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA224Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA224Digest;-><init>()V

    return-object v0

    .line 1080
    :pswitch_3
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>()V

    return-object v0

    .line 1082
    :pswitch_4
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA384Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA384Digest;-><init>()V

    return-object v0

    .line 1084
    :pswitch_5
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA512Digest;-><init>()V

    return-object v0

    .line 1086
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown HashAlgorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static ͺ(I[BI)V
    .locals 2

    .line 240
    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 241
    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 242
    add-int/lit8 v0, p2, 0x2

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    .line 243
    return-void
.end method

.method public static ͺ(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z
    .locals 2

    .line 738
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->aTT:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->mq()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->ˏ(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    return v0
.end method

.method public static ι([B)[B
    .locals 1

    .line 407
    array-length v0, p0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᴰ(I)V

    .line 408
    array-length v0, p0

    int-to-byte v0, v0

    invoke-static {p0, v0}, Lorg/spongycastle/util/Arrays;->ˋ([BB)[B

    move-result-object v0

    return-object v0
.end method

.method public static ՙ(Ljava/io/InputStream;)I
    .locals 5

    .line 464
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 465
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 466
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 467
    if-gez v4, :cond_0

    .line 469
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 471
    :cond_0
    shl-int/lit8 v0, v2, 0x10

    shl-int/lit8 v1, v3, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v4

    return v0
.end method

.method public static י(Ljava/io/InputStream;)J
    .locals 8

    .line 485
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 486
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 487
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 488
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 489
    if-gez v7, :cond_0

    .line 491
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 493
    :cond_0
    shl-int/lit8 v0, v4, 0x2

    shl-int/lit8 v1, v5, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v6, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v7

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static ٴ(Ljava/io/InputStream;)[B
    .locals 2

    .line 568
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ﾞ(Ljava/io/InputStream;)S

    move-result v1

    .line 569
    invoke-static {v1, p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᐝ(ILjava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static ৲([B)Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 646
    new-instance v2, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v2, p0}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 647
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 648
    const/4 v0, 0x0

    if-ne v0, v3, :cond_0

    .line 650
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 652
    :cond_0
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    const/4 v1, 0x0

    if-eq v1, v0, :cond_1

    .line 654
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 656
    :cond_1
    return-object v3
.end method

.method public static ᐝ(ILjava/io/OutputStream;)V
    .locals 0

    .line 204
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    .line 205
    return-void
.end method

.method public static ᐝ(J[BI)V
    .locals 3

    .line 298
    const/16 v0, 0x38

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 299
    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x30

    ushr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 300
    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x28

    ushr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 301
    add-int/lit8 v0, p3, 0x3

    const/16 v1, 0x20

    ushr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 302
    add-int/lit8 v0, p3, 0x4

    const/16 v1, 0x18

    ushr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 303
    add-int/lit8 v0, p3, 0x5

    const/16 v1, 0x10

    ushr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 304
    add-int/lit8 v0, p3, 0x6

    const/16 v1, 0x8

    ushr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 305
    add-int/lit8 v0, p3, 0x7

    long-to-int v1, p0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 306
    return-void
.end method

.method public static ᐝ(Lorg/spongycastle/crypto/tls/TlsContext;)Z
    .locals 2

    .line 192
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->aTT:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->lJ()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->mq()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->ˏ(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    return v0
.end method

.method public static ᐝ(ILjava/io/InputStream;)[B
    .locals 2

    .line 543
    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    .line 545
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->abo:[B

    return-object v0

    .line 547
    :cond_0
    new-array v1, p0, [B

    .line 548
    invoke-static {p1, v1}, Lorg/spongycastle/util/io/Streams;->ˎ(Ljava/io/InputStream;[B)I

    move-result v0

    if-eq p0, v0, :cond_1

    .line 550
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 552
    :cond_1
    return-object v1
.end method

.method static ᐝ(Lorg/spongycastle/crypto/tls/TlsContext;I)[B
    .locals 5

    .line 969
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->lH()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v2

    .line 970
    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/SecurityParameters;->mE()[B

    move-result-object v3

    .line 971
    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/SecurityParameters;->mG()[B

    move-result-object v0

    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/SecurityParameters;->mF()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˍ([B[B)[B

    move-result-object v4

    .line 974
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˎ(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 976
    invoke-static {v3, v4, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ʼ([B[BI)[B

    move-result-object v0

    return-object v0

    .line 979
    :cond_0
    const-string v0, "key expansion"

    invoke-static {p0, v3, v0, v4, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(Lorg/spongycastle/crypto/tls/TlsContext;[BLjava/lang/String;[BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static ᐢ([B)Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 665
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->৲([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    .line 666
    const-string v0, "DER"

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v3

    .line 667
    invoke-static {v3, p0}, Lorg/spongycastle/util/Arrays;->ﹺ([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 669
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 671
    :cond_0
    return-object v2
.end method

.method public static ᴰ(I)V
    .locals 2

    .line 60
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᵩ(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 64
    :cond_0
    return-void
.end method

.method public static ᴵ(Ljava/io/InputStream;)[B
    .locals 2

    .line 575
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ʹ(Ljava/io/InputStream;)I

    move-result v1

    .line 576
    invoke-static {v1, p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᐝ(ILjava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static ᴻ(I)V
    .locals 2

    .line 76
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ḻ(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 80
    :cond_0
    return-void
.end method

.method public static ᵎ(Ljava/io/InputStream;)[B
    .locals 2

    .line 582
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ՙ(Ljava/io/InputStream;)I

    move-result v1

    .line 583
    invoke-static {v1, p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᐝ(ILjava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static ᵔ(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 3

    .line 617
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 618
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 619
    if-gez v2, :cond_0

    .line 621
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 623
    :cond_0
    invoke-static {v1, v2}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->ᔊ(II)Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public static ᵠ(I)V
    .locals 2

    .line 92
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ṟ(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 96
    :cond_0
    return-void
.end method

.method public static ᵩ(I)Z
    .locals 1

    .line 137
    and-int/lit16 v0, p0, 0xff

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static ḻ(I)Z
    .locals 1

    .line 147
    const v0, 0xffff

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static ṟ(I)Z
    .locals 1

    .line 157
    const v0, 0xffffff

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static ẛ(I)Lorg/spongycastle/crypto/Digest;
    .locals 1

    .line 1113
    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    .line 1116
    :sswitch_0
    new-instance v0, Lorg/spongycastle/crypto/tls/CombinedHash;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/CombinedHash;-><init>()V

    return-object v0

    .line 1118
    :goto_0
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->Ỉ(I)S

    move-result v0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ͺ(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method public static Ỉ(I)S
    .locals 2

    .line 1135
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 1138
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "legacy PRF not a valid algorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1140
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 1142
    :pswitch_2
    const/4 v0, 0x5

    return v0

    .line 1144
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown PRFAlgorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static ι(S)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 2

    .line 1150
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 1153
    :pswitch_0
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->aqT:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0

    .line 1155
    :pswitch_1
    sget-object v0, Lorg/spongycastle/asn1/x509/X509ObjectIdentifiers;->aCd:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0

    .line 1157
    :pswitch_2
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aoe:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0

    .line 1159
    :pswitch_3
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aob:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0

    .line 1161
    :pswitch_4
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aoc:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0

    .line 1163
    :pswitch_5
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aod:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0

    .line 1165
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown HashAlgorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static ῒ(I)I
    .locals 2

    .line 1310
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ΐ(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1321
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 1333
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 1339
    :pswitch_2
    const/4 v0, 0x0

    return v0

    .line 1342
    :goto_0
    :pswitch_3
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static ΐ(I)I
    .locals 2

    .line 1348
    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_0

    .line 1366
    :sswitch_0
    const/4 v0, 0x7

    return v0

    .line 1371
    :sswitch_1
    const/16 v0, 0x66

    return v0

    .line 1389
    :sswitch_2
    const/16 v0, 0x8

    return v0

    .line 1404
    :sswitch_3
    const/16 v0, 0x8

    return v0

    .line 1410
    :sswitch_4
    const/16 v0, 0xf

    return v0

    .line 1416
    :sswitch_5
    const/16 v0, 0x10

    return v0

    .line 1430
    :sswitch_6
    const/16 v0, 0xa

    return v0

    .line 1448
    :sswitch_7
    const/16 v0, 0x9

    return v0

    .line 1455
    :sswitch_8
    const/16 v0, 0x9

    return v0

    .line 1465
    :sswitch_9
    const/16 v0, 0x9

    return v0

    .line 1471
    :sswitch_a
    const/16 v0, 0x11

    return v0

    .line 1477
    :sswitch_b
    const/16 v0, 0x12

    return v0

    .line 1491
    :sswitch_c
    const/16 v0, 0xb

    return v0

    .line 1498
    :sswitch_d
    const/16 v0, 0xc

    return v0

    .line 1513
    :sswitch_e
    const/16 v0, 0xc

    return v0

    .line 1527
    :sswitch_f
    const/16 v0, 0x13

    return v0

    .line 1534
    :sswitch_10
    const/16 v0, 0xd

    return v0

    .line 1541
    :sswitch_11
    const/16 v0, 0xd

    return v0

    .line 1551
    :sswitch_12
    const/16 v0, 0xd

    return v0

    .line 1565
    :sswitch_13
    const/16 v0, 0x14

    return v0

    .line 1575
    :sswitch_14
    const/16 v0, 0x64

    return v0

    .line 1578
    :sswitch_15
    const/4 v0, 0x0

    return v0

    .line 1589
    :sswitch_16
    const/4 v0, 0x0

    return v0

    .line 1596
    :sswitch_17
    const/4 v0, 0x0

    return v0

    .line 1602
    :sswitch_18
    const/4 v0, 0x0

    return v0

    .line 1606
    :sswitch_19
    const/4 v0, 0x2

    return v0

    .line 1618
    :sswitch_1a
    const/4 v0, 0x2

    return v0

    .line 1628
    :sswitch_1b
    const/16 v0, 0x65

    return v0

    .line 1635
    :sswitch_1c
    const/16 v0, 0xe

    return v0

    .line 1638
    :goto_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_15
        0x2 -> :sswitch_16
        0x4 -> :sswitch_19
        0x5 -> :sswitch_1a
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x10 -> :sswitch_0
        0x13 -> :sswitch_0
        0x16 -> :sswitch_0
        0x18 -> :sswitch_19
        0x2c -> :sswitch_16
        0x2d -> :sswitch_16
        0x2e -> :sswitch_16
        0x2f -> :sswitch_2
        0x30 -> :sswitch_2
        0x31 -> :sswitch_2
        0x32 -> :sswitch_2
        0x33 -> :sswitch_2
        0x35 -> :sswitch_7
        0x36 -> :sswitch_7
        0x37 -> :sswitch_7
        0x38 -> :sswitch_7
        0x39 -> :sswitch_7
        0x3b -> :sswitch_17
        0x3c -> :sswitch_3
        0x3d -> :sswitch_8
        0x3e -> :sswitch_3
        0x3f -> :sswitch_3
        0x40 -> :sswitch_3
        0x41 -> :sswitch_d
        0x42 -> :sswitch_d
        0x43 -> :sswitch_d
        0x44 -> :sswitch_d
        0x45 -> :sswitch_d
        0x67 -> :sswitch_3
        0x68 -> :sswitch_8
        0x69 -> :sswitch_8
        0x6a -> :sswitch_8
        0x6b -> :sswitch_8
        0x84 -> :sswitch_10
        0x85 -> :sswitch_10
        0x86 -> :sswitch_10
        0x87 -> :sswitch_10
        0x88 -> :sswitch_10
        0x8a -> :sswitch_1a
        0x8b -> :sswitch_0
        0x8c -> :sswitch_2
        0x8d -> :sswitch_7
        0x8e -> :sswitch_1a
        0x8f -> :sswitch_0
        0x90 -> :sswitch_2
        0x91 -> :sswitch_7
        0x92 -> :sswitch_1a
        0x93 -> :sswitch_0
        0x94 -> :sswitch_2
        0x95 -> :sswitch_7
        0x96 -> :sswitch_1c
        0x97 -> :sswitch_1c
        0x98 -> :sswitch_1c
        0x99 -> :sswitch_1c
        0x9a -> :sswitch_1c
        0x9c -> :sswitch_6
        0x9d -> :sswitch_c
        0x9e -> :sswitch_6
        0x9f -> :sswitch_c
        0xa0 -> :sswitch_6
        0xa1 -> :sswitch_c
        0xa2 -> :sswitch_6
        0xa3 -> :sswitch_c
        0xa4 -> :sswitch_6
        0xa5 -> :sswitch_c
        0xa8 -> :sswitch_6
        0xa9 -> :sswitch_c
        0xaa -> :sswitch_6
        0xab -> :sswitch_c
        0xac -> :sswitch_6
        0xad -> :sswitch_c
        0xae -> :sswitch_3
        0xaf -> :sswitch_9
        0xb0 -> :sswitch_17
        0xb1 -> :sswitch_18
        0xb2 -> :sswitch_3
        0xb3 -> :sswitch_9
        0xb4 -> :sswitch_17
        0xb5 -> :sswitch_18
        0xb6 -> :sswitch_3
        0xb7 -> :sswitch_9
        0xb8 -> :sswitch_17
        0xb9 -> :sswitch_18
        0xba -> :sswitch_e
        0xbb -> :sswitch_e
        0xbc -> :sswitch_e
        0xbd -> :sswitch_e
        0xbe -> :sswitch_e
        0xc0 -> :sswitch_11
        0xc1 -> :sswitch_11
        0xc2 -> :sswitch_11
        0xc3 -> :sswitch_11
        0xc4 -> :sswitch_11
        0xc001 -> :sswitch_16
        0xc002 -> :sswitch_1a
        0xc003 -> :sswitch_0
        0xc004 -> :sswitch_2
        0xc005 -> :sswitch_7
        0xc006 -> :sswitch_16
        0xc007 -> :sswitch_1a
        0xc008 -> :sswitch_0
        0xc009 -> :sswitch_2
        0xc00a -> :sswitch_7
        0xc00b -> :sswitch_16
        0xc00c -> :sswitch_1a
        0xc00d -> :sswitch_0
        0xc00e -> :sswitch_2
        0xc00f -> :sswitch_7
        0xc010 -> :sswitch_16
        0xc011 -> :sswitch_1a
        0xc012 -> :sswitch_0
        0xc013 -> :sswitch_2
        0xc014 -> :sswitch_7
        0xc016 -> :sswitch_1a
        0xc01a -> :sswitch_0
        0xc01b -> :sswitch_0
        0xc01c -> :sswitch_0
        0xc01d -> :sswitch_2
        0xc01e -> :sswitch_2
        0xc01f -> :sswitch_2
        0xc020 -> :sswitch_7
        0xc021 -> :sswitch_7
        0xc022 -> :sswitch_7
        0xc023 -> :sswitch_3
        0xc024 -> :sswitch_9
        0xc025 -> :sswitch_3
        0xc026 -> :sswitch_9
        0xc027 -> :sswitch_3
        0xc028 -> :sswitch_9
        0xc029 -> :sswitch_3
        0xc02a -> :sswitch_9
        0xc02b -> :sswitch_6
        0xc02c -> :sswitch_c
        0xc02d -> :sswitch_6
        0xc02e -> :sswitch_c
        0xc02f -> :sswitch_6
        0xc030 -> :sswitch_c
        0xc031 -> :sswitch_6
        0xc032 -> :sswitch_c
        0xc033 -> :sswitch_1a
        0xc034 -> :sswitch_0
        0xc035 -> :sswitch_2
        0xc036 -> :sswitch_7
        0xc037 -> :sswitch_3
        0xc038 -> :sswitch_9
        0xc039 -> :sswitch_16
        0xc03a -> :sswitch_17
        0xc03b -> :sswitch_18
        0xc072 -> :sswitch_e
        0xc073 -> :sswitch_12
        0xc074 -> :sswitch_e
        0xc075 -> :sswitch_12
        0xc076 -> :sswitch_e
        0xc077 -> :sswitch_12
        0xc078 -> :sswitch_e
        0xc079 -> :sswitch_12
        0xc07a -> :sswitch_f
        0xc07b -> :sswitch_13
        0xc07c -> :sswitch_f
        0xc07d -> :sswitch_13
        0xc07e -> :sswitch_f
        0xc07f -> :sswitch_13
        0xc080 -> :sswitch_f
        0xc081 -> :sswitch_13
        0xc082 -> :sswitch_f
        0xc083 -> :sswitch_13
        0xc086 -> :sswitch_f
        0xc087 -> :sswitch_13
        0xc088 -> :sswitch_f
        0xc089 -> :sswitch_13
        0xc08a -> :sswitch_f
        0xc08b -> :sswitch_13
        0xc08c -> :sswitch_f
        0xc08d -> :sswitch_13
        0xc08e -> :sswitch_f
        0xc08f -> :sswitch_13
        0xc090 -> :sswitch_f
        0xc091 -> :sswitch_13
        0xc092 -> :sswitch_f
        0xc093 -> :sswitch_13
        0xc094 -> :sswitch_e
        0xc095 -> :sswitch_12
        0xc096 -> :sswitch_e
        0xc097 -> :sswitch_12
        0xc098 -> :sswitch_e
        0xc099 -> :sswitch_12
        0xc09a -> :sswitch_e
        0xc09b -> :sswitch_12
        0xc09c -> :sswitch_4
        0xc09d -> :sswitch_a
        0xc09e -> :sswitch_4
        0xc09f -> :sswitch_a
        0xc0a0 -> :sswitch_5
        0xc0a1 -> :sswitch_b
        0xc0a2 -> :sswitch_5
        0xc0a3 -> :sswitch_b
        0xc0a4 -> :sswitch_4
        0xc0a5 -> :sswitch_a
        0xc0a6 -> :sswitch_4
        0xc0a7 -> :sswitch_a
        0xc0a8 -> :sswitch_5
        0xc0a9 -> :sswitch_b
        0xc0aa -> :sswitch_5
        0xc0ab -> :sswitch_b
        0xcc13 -> :sswitch_1
        0xcc14 -> :sswitch_1
        0xcc15 -> :sswitch_1
        0xe410 -> :sswitch_14
        0xe411 -> :sswitch_1b
        0xe412 -> :sswitch_14
        0xe413 -> :sswitch_1b
        0xe414 -> :sswitch_14
        0xe415 -> :sswitch_1b
        0xe416 -> :sswitch_14
        0xe417 -> :sswitch_1b
        0xe418 -> :sswitch_14
        0xe419 -> :sswitch_1b
        0xe41a -> :sswitch_14
        0xe41b -> :sswitch_1b
        0xe41c -> :sswitch_14
        0xe41d -> :sswitch_1b
        0xe41e -> :sswitch_14
        0xe41f -> :sswitch_1b
    .end sparse-switch
.end method

.method public static Ⅼ(I)Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 1

    .line 1644
    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_0

    .line 1754
    :sswitch_0
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->aTT:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    return-object v0

    .line 1757
    :goto_0
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->aTQ:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x67 -> :sswitch_0
        0x68 -> :sswitch_0
        0x69 -> :sswitch_0
        0x6a -> :sswitch_0
        0x6b -> :sswitch_0
        0x9c -> :sswitch_0
        0x9d -> :sswitch_0
        0x9e -> :sswitch_0
        0x9f -> :sswitch_0
        0xa0 -> :sswitch_0
        0xa1 -> :sswitch_0
        0xa2 -> :sswitch_0
        0xa3 -> :sswitch_0
        0xa4 -> :sswitch_0
        0xa5 -> :sswitch_0
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_0
        0xaa -> :sswitch_0
        0xab -> :sswitch_0
        0xac -> :sswitch_0
        0xad -> :sswitch_0
        0xba -> :sswitch_0
        0xbb -> :sswitch_0
        0xbc -> :sswitch_0
        0xbd -> :sswitch_0
        0xbe -> :sswitch_0
        0xbf -> :sswitch_0
        0xc0 -> :sswitch_0
        0xc1 -> :sswitch_0
        0xc2 -> :sswitch_0
        0xc3 -> :sswitch_0
        0xc4 -> :sswitch_0
        0xc5 -> :sswitch_0
        0xc023 -> :sswitch_0
        0xc024 -> :sswitch_0
        0xc025 -> :sswitch_0
        0xc026 -> :sswitch_0
        0xc027 -> :sswitch_0
        0xc028 -> :sswitch_0
        0xc029 -> :sswitch_0
        0xc02a -> :sswitch_0
        0xc02b -> :sswitch_0
        0xc02c -> :sswitch_0
        0xc02d -> :sswitch_0
        0xc02e -> :sswitch_0
        0xc02f -> :sswitch_0
        0xc030 -> :sswitch_0
        0xc031 -> :sswitch_0
        0xc032 -> :sswitch_0
        0xc072 -> :sswitch_0
        0xc073 -> :sswitch_0
        0xc074 -> :sswitch_0
        0xc075 -> :sswitch_0
        0xc076 -> :sswitch_0
        0xc077 -> :sswitch_0
        0xc078 -> :sswitch_0
        0xc079 -> :sswitch_0
        0xc07a -> :sswitch_0
        0xc07b -> :sswitch_0
        0xc07c -> :sswitch_0
        0xc07d -> :sswitch_0
        0xc07e -> :sswitch_0
        0xc07f -> :sswitch_0
        0xc080 -> :sswitch_0
        0xc081 -> :sswitch_0
        0xc082 -> :sswitch_0
        0xc083 -> :sswitch_0
        0xc084 -> :sswitch_0
        0xc085 -> :sswitch_0
        0xc086 -> :sswitch_0
        0xc087 -> :sswitch_0
        0xc088 -> :sswitch_0
        0xc089 -> :sswitch_0
        0xc08a -> :sswitch_0
        0xc08b -> :sswitch_0
        0xc08c -> :sswitch_0
        0xc08d -> :sswitch_0
        0xc08e -> :sswitch_0
        0xc08f -> :sswitch_0
        0xc090 -> :sswitch_0
        0xc091 -> :sswitch_0
        0xc092 -> :sswitch_0
        0xc093 -> :sswitch_0
        0xc09c -> :sswitch_0
        0xc09d -> :sswitch_0
        0xc09e -> :sswitch_0
        0xc09f -> :sswitch_0
        0xc0a0 -> :sswitch_0
        0xc0a1 -> :sswitch_0
        0xc0a2 -> :sswitch_0
        0xc0a3 -> :sswitch_0
        0xc0a4 -> :sswitch_0
        0xc0a5 -> :sswitch_0
        0xc0a6 -> :sswitch_0
        0xc0a7 -> :sswitch_0
        0xc0a8 -> :sswitch_0
        0xc0a9 -> :sswitch_0
        0xc0aa -> :sswitch_0
        0xc0ab -> :sswitch_0
        0xcc13 -> :sswitch_0
        0xcc14 -> :sswitch_0
        0xcc15 -> :sswitch_0
    .end sparse-switch
.end method

.method public static ⅴ(I)Z
    .locals 2

    .line 1768
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ῒ(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static ﺛ(Ljava/lang/Object;)Ljava/util/Vector;
    .locals 2

    .line 1303
    new-instance v1, Ljava/util/Vector;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/Vector;-><init>(I)V

    .line 1304
    invoke-virtual {v1, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1305
    return-object v1
.end method

.method public static ﾞ(Ljava/io/InputStream;)S
    .locals 2

    .line 429
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 430
    if-gez v1, :cond_0

    .line 432
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 434
    :cond_0
    int-to-short v0, v1

    return v0
.end method
