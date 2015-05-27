.class public final Lcom/squareup/okhttp/Headers;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/Headers$Builder;
    }
.end annotation


# instance fields
.field private final namesAndValues:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/Headers$Builder;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    # getter for: Lcom/squareup/okhttp/Headers$Builder;->namesAndValues:Ljava/util/List;
    invoke-static {p1}, Lcom/squareup/okhttp/Headers$Builder;->access$000(Lcom/squareup/okhttp/Headers$Builder;)Ljava/util/List;

    move-result-object v0

    # getter for: Lcom/squareup/okhttp/Headers$Builder;->namesAndValues:Ljava/util/List;
    invoke-static {p1}, Lcom/squareup/okhttp/Headers$Builder;->access$000(Lcom/squareup/okhttp/Headers$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/squareup/okhttp/Headers;->namesAndValues:[Ljava/lang/String;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/Headers$Builder;Lcom/squareup/okhttp/Headers$1;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/Headers;-><init>(Lcom/squareup/okhttp/Headers$Builder;)V

    return-void
.end method

.method private constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/squareup/okhttp/Headers;->namesAndValues:[Ljava/lang/String;

    .line 56
    return-void
.end method

.method private static get([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 134
    array-length v0, p0

    add-int/lit8 v2, v0, -0x2

    :goto_0
    if-ltz v2, :cond_1

    .line 135
    aget-object v0, p0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    add-int/lit8 v0, v2, 0x1

    aget-object v0, p0, v0

    return-object v0

    .line 134
    :cond_0
    add-int/lit8 v2, v2, -0x2

    goto :goto_0

    .line 139
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static of(Ljava/util/Map;)Lcom/squareup/okhttp/Headers;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)Lcom/squareup/okhttp/Headers;"
        }
    .end annotation

    .line 175
    if-nez p0, :cond_0

    .line 176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected map with header names and values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    .line 181
    const/4 v4, 0x0

    .line 182
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v6, v0

    .line 183
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 184
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Headers cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_2
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 187
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 188
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 189
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_4
    aput-object v7, v3, v4

    .line 192
    add-int/lit8 v0, v4, 0x1

    aput-object v8, v3, v0

    .line 193
    add-int/lit8 v4, v4, 0x2

    .line 194
    goto/16 :goto_0

    .line 196
    :cond_5
    new-instance v0, Lcom/squareup/okhttp/Headers;

    invoke-direct {v0, v3}, Lcom/squareup/okhttp/Headers;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs of([Ljava/lang/String;)Lcom/squareup/okhttp/Headers;
    .locals 6

    .line 148
    if-eqz p0, :cond_0

    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected alternating header names and values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_1
    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object p0, v0

    .line 154
    const/4 v3, 0x0

    :goto_0
    array-length v0, p0

    if-ge v3, v0, :cond_3

    .line 155
    aget-object v0, p0, v3

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Headers cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_2
    aget-object v0, p0, v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v3

    .line 154
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 160
    :cond_3
    const/4 v3, 0x0

    :goto_1
    array-length v0, p0

    if-ge v3, v0, :cond_6

    .line 161
    aget-object v4, p0, v3

    .line 162
    add-int/lit8 v0, v3, 0x1

    aget-object v5, p0, v0

    .line 163
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 164
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_5
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 168
    :cond_6
    new-instance v0, Lcom/squareup/okhttp/Headers;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/Headers;-><init>([Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/squareup/okhttp/Headers;->namesAndValues:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/squareup/okhttp/Headers;->get([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    .line 69
    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/squareup/okhttp/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public name(I)Ljava/lang/String;
    .locals 2

    .line 80
    mul-int/lit8 v1, p1, 0x2

    .line 81
    if-ltz v1, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/Headers;->namesAndValues:[Ljava/lang/String;

    array-length v0, v0

    if-lt v1, v0, :cond_1

    .line 82
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/Headers;->namesAndValues:[Ljava/lang/String;

    aget-object v0, v0, v1

    return-object v0
.end method

.method public names()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/Set<Ljava/lang/String;>;"
        }
    .end annotation

    .line 98
    new-instance v1, Ljava/util/TreeSet;

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 99
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_0

    .line 100
    invoke-virtual {p0, v2}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lcom/squareup/okhttp/Headers$Builder;
    .locals 3

    .line 120
    new-instance v2, Lcom/squareup/okhttp/Headers$Builder;

    invoke-direct {v2}, Lcom/squareup/okhttp/Headers$Builder;-><init>()V

    .line 121
    # getter for: Lcom/squareup/okhttp/Headers$Builder;->namesAndValues:Ljava/util/List;
    invoke-static {v2}, Lcom/squareup/okhttp/Headers$Builder;->access$000(Lcom/squareup/okhttp/Headers$Builder;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/Headers;->namesAndValues:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 122
    return-object v2
.end method

.method public size()I
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/squareup/okhttp/Headers;->namesAndValues:[Ljava/lang/String;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_0

    .line 128
    invoke-virtual {p0, v3}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value(I)Ljava/lang/String;
    .locals 3

    .line 89
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v2, v0, 0x1

    .line 90
    if-ltz v2, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/Headers;->namesAndValues:[Ljava/lang/String;

    array-length v0, v0

    if-lt v2, v0, :cond_1

    .line 91
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/Headers;->namesAndValues:[Ljava/lang/String;

    aget-object v0, v0, v2

    return-object v0
.end method

.method public values(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;)Ljava/util/List<Ljava/lang/String;>;"
        }
    .end annotation

    .line 107
    const/4 v1, 0x0

    .line 108
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_2

    .line 109
    invoke-virtual {p0, v2}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 111
    :cond_0
    invoke-virtual {p0, v2}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    :cond_2
    if-eqz v1, :cond_3

    .line 115
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 116
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_1
    return-object v0
.end method
