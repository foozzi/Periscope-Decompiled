.class public Lo/ډ$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ʃ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ډ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\u0283<Landroid/net/Uri;Landroid/os/ParcelFileDescriptor;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Landroid/content/Context;Lo/ﺬ;)Lo/ɽ;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/content/Context;Lo/\ufeac;)Lo/\u027d<Landroid/net/Uri;Landroid/os/ParcelFileDescriptor;>;"
        }
    .end annotation

    .line 28
    new-instance v0, Lo/ډ;

    const-class v1, Lo/ﻣ;

    const-class v2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2, v1, v2}, Lo/ﺬ;->ˎ(Ljava/lang/Class;Ljava/lang/Class;)Lo/ɽ;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lo/ډ;-><init>(Landroid/content/Context;Lo/ɽ;)V

    return-object v0
.end method

.method public ﮃ()V
    .locals 0

    .line 35
    return-void
.end method
