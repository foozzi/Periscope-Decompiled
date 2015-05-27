.class Lo/ῑ$ˋ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ῑ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "\u02cb"
.end annotation


# instance fields
.field final synthetic j:Lo/ῑ;


# direct methods
.method private constructor <init>(Lo/ῑ;)V
    .locals 0

    .line 1718
    iput-object p1, p0, Lo/ῑ$ˋ;->j:Lo/ῑ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/ῑ;Lo/‿;)V
    .locals 0

    .line 1718
    invoke-direct {p0, p1}, Lo/ῑ$ˋ;-><init>(Lo/ῑ;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1720
    iget-object v0, p0, Lo/ῑ$ˋ;->j:Lo/ῑ;

    invoke-virtual {v0}, Lo/ῑ;->clearListSelection()V

    .line 1721
    return-void
.end method
