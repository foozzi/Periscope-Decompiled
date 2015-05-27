.class public Lo/չ$if;
.super Ljava/io/IOException;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/չ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field public final tE:Lo/к;


# direct methods
.method public constructor <init>(Ljava/io/IOException;Lo/к;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 69
    iput-object p2, p0, Lo/չ$if;->tE:Lo/к;

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Lo/к;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    iput-object p3, p0, Lo/չ$if;->tE:Lo/к;

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lo/к;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 64
    iput-object p2, p0, Lo/չ$if;->tE:Lo/к;

    .line 65
    return-void
.end method
