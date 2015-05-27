.class Lorg/spongycastle/crypto/encodings/PKCS1Encoding$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aIC:Lorg/spongycastle/crypto/encodings/PKCS1Encoding;


# direct methods
.method constructor <init>(Lorg/spongycastle/crypto/encodings/PKCS1Encoding;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding$1;->aIC:Lorg/spongycastle/crypto/encodings/PKCS1Encoding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1

    .line 97
    const-string v0, "org.spongycastle.pkcs1.strict"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
