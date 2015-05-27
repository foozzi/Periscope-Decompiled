.class final Lo/ᒺ$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᒺ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "if"
.end annotation


# instance fields
.field public final wB:Lo/ᓖ;

.field public final wC:Lo/ᓛ;

.field public final wD:Lo/ᒳ;

.field public wE:I


# direct methods
.method public constructor <init>(Lo/ᓖ;Lo/ᓛ;Lo/ᒳ;)V
    .locals 0

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    iput-object p1, p0, Lo/ᒺ$if;->wB:Lo/ᓖ;

    .line 381
    iput-object p2, p0, Lo/ᒺ$if;->wC:Lo/ᓛ;

    .line 382
    iput-object p3, p0, Lo/ᒺ$if;->wD:Lo/ᒳ;

    .line 383
    return-void
.end method
