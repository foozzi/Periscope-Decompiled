.class public Lo/aeh$ˊ;
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
    name = "\u02ca"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/aeh<Lo/xh;>;"
    }
.end annotation


# instance fields
.field private bzu:Lo/aej;


# direct methods
.method public constructor <init>(Lo/aej;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lo/aeh$ˊ;->bzu:Lo/aej;

    .line 35
    return-void
.end method


# virtual methods
.method public xA()Lo/xh;
    .locals 1

    .line 44
    iget-object v0, p0, Lo/aeh$ˊ;->bzu:Lo/aej;

    invoke-virtual {v0}, Lo/aej;->xK()Lo/xh;

    move-result-object v0

    return-object v0
.end method

.method public xy()Lo/aeh$ʻ;
    .locals 1

    .line 39
    sget-object v0, Lo/aeh$ʻ;->bAo:Lo/aeh$ʻ;

    return-object v0
.end method
