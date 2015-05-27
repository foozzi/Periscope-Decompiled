.class public Lo/ʷ$ˋ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ʷ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u02cb"
.end annotation


# instance fields
.field private final hD:Lo/ΐ;

.field private final hE:Lo/ᘆ;


# direct methods
.method public constructor <init>(Lo/ᘆ;Lo/ΐ;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lo/ʷ$ˋ;->hE:Lo/ᘆ;

    .line 53
    iput-object p2, p0, Lo/ʷ$ˋ;->hD:Lo/ΐ;

    .line 54
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 57
    iget-object v0, p0, Lo/ʷ$ˋ;->hD:Lo/ΐ;

    iget-object v1, p0, Lo/ʷ$ˋ;->hE:Lo/ᘆ;

    invoke-virtual {v0, v1}, Lo/ΐ;->ˋ(Lo/ᘆ;)V

    .line 58
    return-void
.end method
