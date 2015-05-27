.class abstract Lo/ads$ˊ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ale;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "\u02ca"
.end annotation


# instance fields
.field public final brj:Lo/ant;

.field final synthetic byX:Lo/ads;

.field protected final byZ:Lo/amw;

.field protected final bza:Lo/vk;


# direct methods
.method constructor <init>(Lo/ads;Lo/ant;Lo/amw;Lo/vk;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lo/ads$ˊ;->byX:Lo/ads;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p2, p0, Lo/ads$ˊ;->brj:Lo/ant;

    .line 89
    iput-object p3, p0, Lo/ads$ˊ;->byZ:Lo/amw;

    .line 90
    iput-object p4, p0, Lo/ads$ˊ;->bza:Lo/vk;

    .line 91
    return-void
.end method


# virtual methods
.method public final execute()Z
    .locals 1

    .line 100
    invoke-virtual {p0}, Lo/ads$ˊ;->xg()V

    .line 101
    iget-object v0, p0, Lo/ads$ˊ;->byX:Lo/ads;

    invoke-virtual {v0}, Lo/ads;->xe()V

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract xg()V
.end method

.method public xi()I
    .locals 1

    .line 95
    const v0, 0x7f09002b

    return v0
.end method
