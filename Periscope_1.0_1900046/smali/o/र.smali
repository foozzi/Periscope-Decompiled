.class public abstract Lo/र;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ס$ˋ;


# instance fields
.field public final tC:I

.field public final tD:Lo/ব;

.field public final tE:Lo/к;

.field protected final tF:Lo/ϒ;

.field public final type:I


# direct methods
.method public constructor <init>(Lo/ϒ;Lo/к;IILo/ব;)V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-static {p1}, Lo/ړ;->יּ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ϒ;

    iput-object v0, p0, Lo/र;->tF:Lo/ϒ;

    .line 107
    invoke-static {p2}, Lo/ړ;->יּ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/к;

    iput-object v0, p0, Lo/र;->tE:Lo/к;

    .line 108
    iput p3, p0, Lo/र;->type:I

    .line 109
    iput p4, p0, Lo/र;->tC:I

    .line 110
    iput-object p5, p0, Lo/र;->tD:Lo/ব;

    .line 111
    return-void
.end method


# virtual methods
.method public abstract ব()J
.end method
