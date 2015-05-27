.class final Lo/ᒷ$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᒷ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "if"
.end annotation


# instance fields
.field public final wj:[Lo/ᓘ;

.field public wk:Lo/ب;

.field public wl:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    new-array v0, p1, [Lo/ᓘ;

    iput-object v0, p0, Lo/ᒷ$if;->wj:[Lo/ᓘ;

    .line 612
    const/4 v0, -0x1

    iput v0, p0, Lo/ᒷ$if;->wl:I

    .line 613
    return-void
.end method
