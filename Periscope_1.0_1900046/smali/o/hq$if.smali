.class final Lo/hq$if;
.super Ljava/io/Writer;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/hq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/hq$if$if;
    }
.end annotation


# instance fields
.field private final Lu:Ljava/lang/Appendable;

.field private final Lv:Lo/hq$if$if;


# direct methods
.method private constructor <init>(Ljava/lang/Appendable;)V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 82
    new-instance v0, Lo/hq$if$if;

    invoke-direct {v0}, Lo/hq$if$if;-><init>()V

    iput-object v0, p0, Lo/hq$if;->Lv:Lo/hq$if$if;

    .line 85
    iput-object p1, p0, Lo/hq$if;->Lu:Ljava/lang/Appendable;

    .line 86
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Appendable;Lo/hq$1;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lo/hq$if;-><init>(Ljava/lang/Appendable;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 98
    return-void
.end method

.method public flush()V
    .locals 0

    .line 97
    return-void
.end method

.method public write(I)V
    .locals 2

    .line 94
    iget-object v0, p0, Lo/hq$if;->Lu:Ljava/lang/Appendable;

    int-to-char v1, p1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 95
    return-void
.end method

.method public write([CII)V
    .locals 3

    .line 89
    iget-object v0, p0, Lo/hq$if;->Lv:Lo/hq$if$if;

    iput-object p1, v0, Lo/hq$if$if;->chars:[C

    .line 90
    iget-object v0, p0, Lo/hq$if;->Lu:Ljava/lang/Appendable;

    iget-object v1, p0, Lo/hq$if;->Lv:Lo/hq$if$if;

    add-int v2, p2, p3

    invoke-interface {v0, v1, p2, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 91
    return-void
.end method
