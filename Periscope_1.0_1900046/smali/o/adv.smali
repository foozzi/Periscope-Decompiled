.class public abstract Lo/adv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ale;


# instance fields
.field protected final bwV:Ljava/lang/String;

.field private byY:Lo/ali;

.field protected bzc:Lo/ady;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/ady;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lo/adv;->bwV:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lo/adv;->bzc:Lo/ady;

    .line 18
    new-instance v0, Lo/ali;

    invoke-direct {v0}, Lo/ali;-><init>()V

    iput-object v0, p0, Lo/adv;->byY:Lo/ali;

    .line 19
    return-void
.end method


# virtual methods
.method public xh()Lo/ali;
    .locals 1

    .line 37
    iget-object v0, p0, Lo/adv;->byY:Lo/ali;

    return-object v0
.end method

.method public xi()I
    .locals 1

    .line 27
    const v0, 0x7f09002b

    return v0
.end method

.method public xj()I
    .locals 1

    .line 32
    const v0, 0x7f090046

    return v0
.end method
