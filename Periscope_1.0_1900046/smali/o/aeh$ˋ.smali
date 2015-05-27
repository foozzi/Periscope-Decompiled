.class public Lo/aeh$ˋ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aeh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aeh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u02cb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/aeh<Ljava/lang/String;>;"
    }
.end annotation


# instance fields
.field private final bAe:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lo/aeh$ˋ;->bAe:Ljava/lang/String;

    .line 92
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lo/aeh$ˋ;->bAe:Ljava/lang/String;

    return-object v0
.end method

.method public xy()Lo/aeh$ʻ;
    .locals 1

    .line 96
    sget-object v0, Lo/aeh$ʻ;->bAr:Lo/aeh$ʻ;

    return-object v0
.end method
