.class Lo/aaq$ˎ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aaq$ᐝ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aaq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "\u02ce"
.end annotation


# instance fields
.field final synthetic buF:Lo/aaq;

.field private canceled:Z


# direct methods
.method private constructor <init>(Lo/aaq;)V
    .locals 0

    .line 636
    iput-object p1, p0, Lo/aaq$ˎ;->buF:Lo/aaq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/aaq;Lo/aar;)V
    .locals 0

    .line 636
    invoke-direct {p0, p1}, Lo/aaq$ˎ;-><init>(Lo/aaq;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 641
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/aaq$ˎ;->canceled:Z

    .line 642
    return-void
.end method

.method public ʼ(Ljava/lang/Exception;)V
    .locals 1

    .line 654
    iget-boolean v0, p0, Lo/aaq$ˎ;->canceled:Z

    if-nez v0, :cond_0

    .line 655
    iget-object v0, p0, Lo/aaq$ˎ;->buF:Lo/aaq;

    invoke-virtual {v0, p1}, Lo/aaq;->ʼ(Ljava/lang/Exception;)V

    .line 657
    :cond_0
    return-void
.end method

.method public ˊ([[Ljava/lang/String;[Lo/ก;[Lo/ڹ;)V
    .locals 1

    .line 647
    iget-boolean v0, p0, Lo/aaq$ˎ;->canceled:Z

    if-nez v0, :cond_0

    .line 648
    iget-object v0, p0, Lo/aaq$ˎ;->buF:Lo/aaq;

    invoke-virtual {v0, p1, p2, p3}, Lo/aaq;->ˊ([[Ljava/lang/String;[Lo/ก;[Lo/ڹ;)V

    .line 650
    :cond_0
    return-void
.end method
